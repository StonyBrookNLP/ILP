import json
# import multiprocessing as mp
import pathos.multiprocessing as mp
import time
import cPickle as pickle
from os import listdir
from os.path import isfile, join
from os.path import join
from gurobipy import *
from collections import defaultdict
from tqdm import tqdm
from  utils import entailment
from  utils import ilp_utils
from  utils import ilp_config
from time import sleep

import numpy as np

roles = ilp_config.roles
num_processes = mp.cpu_count() \
        if ilp_config.max_processes is None \
        else min(ilp_config.max_processes, mp.cpu_count())

e_data = pickle.load(open(join(ilp_config.entailment_data_path, 'a_data.p'), 'rb'))

def get_entailment_score(args):
    arg1, arg2 = args
    if args in e_data:
        return (args, e_data[args])
    else:
        return (args, ilp_utils.get_similarity_score(arg1, arg2))

def get_sentence_from_id(s_id, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_map =  {v: k for k, v in sent_to_id.items()}
    return s_map[s_id]


def joint_inference_ilp(process, p_data, f):
    # Integer Linear Programming for Joint Inference.
    sentences = ilp_utils.get_sentences(p_data)

    lambda_1 = ilp_config.lambda_1
    lambda_2 = ilp_config.lambda_2

    role_score_vars = {}
    label_indicator = {}

    lp = Model(process+'_srl_ilp')
    # Supress Gurobi Output
    lp.setParam('OutputFlag', False)

    # print "- number of sentences:", len(sentences)
    p_args = 0

    for s_id, sentence in sentences:
        args = ilp_utils.get_sentence_args(sentence, p_data)
        p_args += len(args)
        for a_id, arg in args:
            for r_id, role in enumerate(roles):
                role_score = ilp_utils.get_role_scores(sentence, a_id, role, p_data)
                # data: role classifier scores
                role_score_vars[s_id, a_id, r_id] = role_score
                # add indicator variable
                label_indicator[s_id, a_id, r_id] = lp.addVar(vtype=GRB.BINARY,
                                                              name='Z_' + str(s_id) + '_' + str(a_id) + '_' + str(r_id))

    # print "- number of args:", p_args
    lp.update()

    args = set()
    for s_id1, sentence1 in sentences:
        args1 = ilp_utils.get_sentence_args(sentence1, p_data)
        for a_id1, arg1 in args1:
            for s_id2, sentence2 in sentences:
                if s_id1 != s_id2:
                    args2 = ilp_utils.get_sentence_args(sentence2, p_data)
                    for a_id2, arg2 in args2:
                        args.add((arg1, arg2))

    # print "- number of entailment pairs:", len(args)
    sim_data = {}

    for arg in args:
        _, sim_score = get_entailment_score(arg)
        sim_data[arg] = sim_score

    ret_data = {}
    ret_data[process] = sim_data
    ret_file = join(ilp_config.entailment_data_path, 'process_data', str(f)+'_'+process+".p")
    pickle.dump( ret_data, open(ret_file, "wb" ) )

    # entail_start = time.time()
    '''
    for returned_args in tqdm(pool2.imap_unordered(get_entailment_score, args)):
        args, sim_score = returned_args
        sim_data[args] = sim_score
    '''
    # entail_end = time.time()
    # print "- time taken to get entailment scores: ", round(entail_end - entail_start, 4), "seconds"

    # generate the objective function to maximize the score
    # print "- generating objective function for porcess:", process
    obj = QuadExpr()
    for r_id, role in enumerate(roles):
        for s_id1, sentence1 in sentences:
            args1 = ilp_utils.get_sentence_args(sentence1, p_data)
            for a_id1, arg1 in args1:
                tmp = 0
                for s_id2, sentence2 in sentences:
                    if s_id1 != s_id2:
                        args2 = ilp_utils.get_sentence_args(sentence2, p_data)
                        for a_id2, arg2 in args2:
                            tmp += label_indicator[s_id2, a_id2, r_id] * sim_data[(arg1, arg2)]
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

    # print "- running ilp optimizer for the process:", process
    # ilp_start = time.time()
    lp.optimize()
    '''
    if lp.status == GRB.Status.INF_OR_UNBD:
        # Turn presolve off to determine whether model is infeasible or unbounded
        lp.setParam(GRB.Param.Presolve, 0)
        lp.optimize()
    if lp.status == GRB.Status.OPTIMAL:
        print('- optimal objective: %g' % lp.objVal)
    elif lp.status != GRB.Status.INFEASIBLE:
        print('- optimization was stopped with status %d' % lp.status)
    '''

    lp.write(join(ilp_config.project_dir,'output', process+'_ilp.lp'))
    lp.write(join(ilp_config.project_dir,'output', process+'_ilp.sol'))
    lp.write(join(ilp_config.project_dir,'output', process+'_ilp.mps'))

    # ilp_end = time.time()
    # print "- time taken to optimize: ", round(ilp_end - ilp_start, 4), "seconds"
    return ([(var.varName, var.x) for var in lp.getVars()], sim_data)


def get_ilp_assignment(lp_vars, p_data):
    output_map = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    for var, ind in lp_vars:
        var_ids = var.split("_")
        s = int(var_ids[1])
        a = int(var_ids[2])
        r = int(var_ids[3])
        output_map[s][a][r] = int(ind)
    return output_map

def process_data(p_data):
    process, srl_data, f = p_data
    print process, ':in'
    lp_vars, sim_data = joint_inference_ilp(process, srl_data[process][:3], f)
    ilp_map = get_ilp_assignment(lp_vars, srl_data[process][:3])
    process_ilp_scores = ilp_utils.get_ilp_scores(process, srl_data, sim_data)
    norm_ilp_scores = ilp_utils.normalize_ilp_scores(process_ilp_scores)
    print process, ':out'
    return (process, ilp_map, norm_ilp_scores)


def process_fold(srl_file_path, ilp_out_path, f):
    srl_data = ilp_utils.load_srl_data(srl_file_path)
    print "- done reading input data"
    processes = srl_data.keys()
    ilp_data = {}
    ilp_scores = {}
    pool = mp.Pool(processes=num_processes)
    args2 = []
    for process in processes:
        args2.append((process, srl_data, f))

    print "- num processes:", len(args2)
    # entail_start = time.time()
    for idx, returned_args in enumerate(pool.imap_unordered(process_data, args2)):
        print idx+1
        process, ilp_map, norm_ilp_scores = returned_args
        ilp_data[process] = ilp_map
        ilp_scores[process] = norm_ilp_scores
    # entail_end = time.time()
    # print "- time taken to get entailment scores: ", round(entail_end - entail_start, 4), "seconds"

    '''
    # for process in tqdm(processes):
    for proc_id, process in enumerate(processes):
        # print "- process {} out of {} -> {}".format(proc_id+1, len(processes), process)
        lp_vars, sim_data = joint_inference_ilp(process, srl_data[process][:3])
        # print "- getting ilp_map"
        ilp_map = get_ilp_assignment(lp_vars, srl_data[process][:3])
        ilp_data[process] = ilp_map
        # print "- getting ilp_scores"
        process_ilp_scores = ilp_utils.get_ilp_scores(process, srl_data, sim_data)
        # print "- getting normalized_ilp_scores"
        norm_ilp_scores = ilp_utils.normalize_ilp_scores(process_ilp_scores)
        ilp_scores[process] = norm_ilp_scores
        print "- completed processing:", process, "\n"
    '''
    print "- dumping data to json"
    ilp_utils.dump_ilp_json(srl_data, ilp_data, ilp_scores, ilp_out_path)
    print "Done!"
    # Terminate pool (processes should already be finished)
    pool.terminate()


def main():
    print "Using", num_processes, "parallel processes for getting similarity scores"
    for f, fold_dir in enumerate(listdir(ilp_config.cross_val_dir)):
        print "Fold:", f
        fold_path = join(ilp_config.cross_val_dir, fold_dir)
        srl_predict_file_path = join(fold_path, 'test', 'test.srlpredict.json')
        ilp_predict_file_path = join(fold_path, 'test', 'test.ilppredict.json')
        process_fold(srl_predict_file_path, ilp_predict_file_path, f)
    # data_path = join(ilp_config.project_dir, 'data')
    # srl_predict_file_path = join(data_path, 'srlpredict.json')
    # ilp_predict_file_path = join(data_path, 'ilppredict.json')
    # process_fold(srl_predict_file_path, ilp_predict_file_path)

if __name__ == '__main__':
    main()
