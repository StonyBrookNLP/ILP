import json
import pathos.multiprocessing as mp
import time
import math
import cPickle as pickle
import numpy as np
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

__author__ = 'chetannaik'

roles = ilp_config.roles

# set the number of parallel processes to be run.
num_processes = mp.cpu_count() \
        if ilp_config.max_processes is None \
        else min(ilp_config.max_processes, mp.cpu_count())

print "- loading cached entailment scores"
# read cached entailment scores
e_data = pickle.load(open(join(ilp_config.entailment_data_path, 'entailment_cache.p'), 'rb'))

def get_entailment_score(args):
    """ Returns entailment score. First checks if the entailment score is cached,
    if not AI2 service is used to get the score."""
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
    """Generate ILP optimization function with constraints with the input data
    and run the gurobi optimizer.

    Args:
        process: A string representing process name.
        p_data: A tuple containing process (a string) and srl_data (a dictionary)
        f: A integer representing cross validation fold number.

    Returns:
        A tuple containing a list of ILP role assignment vars and a dictionary
        containing entailment scores that were used.
    """
    # Integer Linear Programming for Joint Inference.
    sentences = ilp_utils.get_sentences(p_data)

    lambda_1 = ilp_config.lambda_1
    lambda_2 = ilp_config.lambda_2

    role_score_vars = {}
    label_indicator = {}

    lp = Model(process+'_srl_ilp')
    # Supress Gurobi Output
    lp.setParam('OutputFlag', False)

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

    sim_data = {}
    for arg in args:
        _, sim_score = get_entailment_score(arg)
        sim_data[arg] = sim_score

    # normalize similarity scores across a process
    sim_data_sum = np.sum(sim_data.values())
    if sim_data_sum > 0:
        sim_data = dict(map(lambda x: (x[0], x[1]/sim_data_sum), sim_data.items()))

    # set all similarity scores below a threshold (0.5) to 0.0
    sim_data2 = {}
    for k, s in sim_data.iteritems():
        if s < 0.5:
            sim_data2[k] = 0.0
        else:
            sim_data2[k] = s

    # generate the objective function to maximize the score
    # print "- generating objective function for porcess:", process
    obj = QuadExpr()
    for r_id, role in enumerate(roles):
        for s_id1, sentence1 in sentences:
            args1 = ilp_utils.get_sentence_args(sentence1, p_data)
            for a_id1, arg1 in args1:
                tmp = 0
                if role != 'NONE':
                    for s_id2, sentence2 in sentences:
                        if s_id1 != s_id2:
                            args2 = ilp_utils.get_sentence_args(sentence2, p_data)
                            for a_id2, arg2 in args2:
                                tmp += label_indicator[s_id2, a_id2, r_id] * sim_data2[(arg1, arg2)]
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

    return ([(var.varName, var.x) for var in lp.getVars()], sim_data2)


def get_ilp_assignment(lp_vars, p_data):
    """Returns ilp assignments given ilp output vars and the tuple p_data"""
    output_map = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    for var, ind in lp_vars:
        var_ids = var.split("_")
        s = int(var_ids[1])
        a = int(var_ids[2])
        r = int(var_ids[3])
        output_map[s][a][r] = int(ind)
    return output_map

def process_data(p_data):
    """Process srl data by calling joint_inference_ilp, getting ilp assignments,
    scores and normalizing them.

    Args:
        p_data: A tuple containing process (a string) and srl_data (a dictionary)

    Returns: A tuple containing process name, ilp assignments and normalized ILP
    scores.
    """
    process, srl_data, f = p_data
    print '.',
    lp_vars, sim_data = joint_inference_ilp(process, srl_data[process][:3], f)
    ilp_map = get_ilp_assignment(lp_vars, srl_data[process][:3])
    process_ilp_scores = ilp_utils.get_ilp_scores(process, srl_data, sim_data)
    norm_ilp_scores = ilp_utils.normalize_ilp_scores(process_ilp_scores)
    return (process, ilp_map, norm_ilp_scores)


def process_fold(srl_file_path, ilp_out_path, f):
    """Process srl output file in srl_file_path, call ilp optimizer and dump
    the output in ilp_out_path.

    Args:
        srl_file_path: Path of the input srl file (string)
        ilp_out_path: Path of the ilp output file (string)
    """
    srl_data = ilp_utils.load_srl_data(srl_file_path)
    processes = srl_data.keys()
    ilp_data = {}
    ilp_scores = {}
    pool = mp.Pool(processes=num_processes)
    # create arguent tuples to be passed to process_data method by the
    # multiprocessing module
    args2 = []
    for process in processes:
        args2.append((process, srl_data, f))

    for idx, returned_args in enumerate(pool.imap_unordered(process_data, args2)):
        process, ilp_map, norm_ilp_scores = returned_args
        ilp_data[process] = ilp_map
        ilp_scores[process] = norm_ilp_scores

    ilp_utils.dump_ilp_json(srl_data, ilp_data, ilp_scores, ilp_out_path)
    # Terminate pool (processes should already be finished)
    pool.terminate()


def main():
    print "Using", num_processes, "parallel processes"
    # iterate through cross-val folds and process srlpredict json to generate
    # ilppredict json by running ilp
    for f, fold_dir in enumerate(listdir(ilp_config.cross_val_dir)):
        print "\n- fold:", f,
        fold_path = join(ilp_config.cross_val_dir, fold_dir)
        srl_predict_file_path = join(fold_path, 'test', 'test.srlpredict.json')
        ilp_predict_file_path = join(fold_path, 'test', 'test.ilppredict.json')
        process_fold(srl_predict_file_path, ilp_predict_file_path, f)
    print "\n- Done!"

if __name__ == '__main__':
    main()
