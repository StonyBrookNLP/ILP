import json
from os import listdir
from os.path import isfile, join
from os.path import join
from gurobipy import *
from collections import defaultdict
from tqdm import tqdm
from  utils import entailment
from  utils import ilp_utils
from  utils import ilp_config

import numpy as np

roles = ilp_config.roles

def get_sentence_from_id(s_id, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_map =  {v: k for k, v in sent_to_id.items()}
    return s_map[s_id]


def joint_inference_ilp(process, p_data):
    # Integer Linear Programming for Joint Inference.
    sentences = ilp_utils.get_sentences(p_data)

    lambda_1 = 0.9
    lambda_2 = 1 - lambda_1

    role_score_vars = {}
    label_indicator = {}

    lp = Model(process+'_srl_ilp')
    # Supress Gurobi Output
    lp.setParam('OutputFlag', False)

    for s_id, sentence in sentences:
        args = ilp_utils.get_sentence_args(sentence, p_data)
        for a_id, arg in args:
            for r_id, role in enumerate(roles):
                role_score = ilp_utils.get_role_scores(sentence, a_id, role, p_data)
                # data: role classifier scores
                role_score_vars[s_id, a_id, r_id] = role_score
                # add indicator variable
                label_indicator[s_id, a_id, r_id] = lp.addVar(vtype=GRB.BINARY,
                                                              name='Z_' + str(s_id) + '_' + str(a_id) + '_' + str(r_id))

    lp.update()

    # generate the objective function to maximize the score
    obj = QuadExpr()
    for r_id, role in enumerate(roles):
        for s_id1, sentence1 in sentences:
            args1 = ilp_utils.get_sentence_args(sentence1, p_data)
            for a_id1, arg1 in args1:
                tmp = 0
                for s_id2, sentence2 in sentences:
                    args2 = ilp_utils.get_sentence_args(sentence2, p_data)
                    for a_id2, arg2 in args2:
                        if s_id1 != s_id2:
                            tmp += label_indicator[s_id2, a_id2, r_id] * float(ilp_utils.get_similarity_score(arg1, arg2))
                obj += label_indicator[s_id1, a_id1, r_id] * ((float(role_score_vars[s_id1, a_id1, r_id]) * lambda_1) + (lambda_2 * tmp))

    lp.setObjective(obj, GRB.MAXIMIZE)
    lp.update()

    # Constraints
    # 1. Every word must take only one role
    for s_id, sentence in sentences:
        args = ilp_utils.get_sentence_args(sentence, p_data)
        for a_id, arg in args:
            lp.addConstr(quicksum([label_indicator[s_id, a_id, r_id] for r_id in range(len(roles))]) <= 1, 'constraint1_' + str(s_id) + str(a_id))

    # 2. Every role must occur only once in the sentence
    for s_id, sentence in sentences:
        for r_id, role in enumerate(roles[:4]):
            lp.addConstr(quicksum([label_indicator[s_id, a_id, r_id] for a_id, arg in ilp_utils.get_sentence_args(sentence, p_data)]) <= 1, 'constraint2_' + str(s_id) + str(r_id))

    lp.optimize()
    lp.write(join(ilp_config.project_dir,'output', process+'_ilp.lp'))
    lp.write(join(ilp_config.project_dir,'output', process+'_ilp.sol'))
    lp.write(join(ilp_config.project_dir,'output', process+'_ilp.mps'))

    return [(var.varName, var.x) for var in lp.getVars()]


def get_ilp_assignment(lp_vars, p_data):
    output_map = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    for var, ind in lp_vars:
        var_ids = var.split("_")
        s = int(var_ids[1])
        a = int(var_ids[2])
        r = int(var_ids[3])
        output_map[s][a][r] = int(ind)
    return output_map


def process_fold(srl_file_path, ilp_out_path):
    srl_data = ilp_utils.load_srl_data(srl_file_path)
    processes = srl_data.keys()
    ilp_data = {}
    ilp_scores = {}
    for process in tqdm(processes):
        lp_vars = joint_inference_ilp(process, srl_data[process][:3])
        ilp_map = get_ilp_assignment(lp_vars, srl_data[process][:3])
        ilp_data[process] = ilp_map
        process_ilp_scores = ilp_utils.get_ilp_scores(process, srl_data)
        norm_ilp_scores = ilp_utils.normalize_ilp_scores(process_ilp_scores)
        ilp_scores[process] = norm_ilp_scores
    ilp_utils.dump_ilp_json(srl_data, ilp_data, ilp_scores, ilp_out_path)
    print "Done!"


def main():
    for f, fold_dir in enumerate(listdir(ilp_config.cross_val_dir)):
        print "Fold:", f
        fold_path = join(ilp_config.cross_val_dir, fold_dir)
        srl_predict_file_path = join(fold_path, 'test', 'test.srlpredict.json')
        ilp_predict_file_path = join(fold_path, 'test', 'test.ilppredict.json')
        process_fold(srl_predict_file_path, ilp_predict_file_path)

if __name__ == '__main__':
    main()
