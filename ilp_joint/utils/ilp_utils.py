import json
import numpy as np
import operator

from collections import defaultdict
from os.path import join
from  utils import entailment
from  utils import ilp_config


def load_srl_data(srl_file):
    d = json.load(open(srl_file, "r"))
    data = {}
    for p_data in d:
        process = p_data['process']
        ss_data = p_data['sentences']
        sent_to_id = {}
        id_to_args = {}
        arg_role_scores = {}
        arg_role_srl_data = {}
        for s_data in ss_data:
            sentence = s_data['text']
            s_id = s_data['sentenceId']
            sent_to_id[sentence] = s_id
            a_spans = s_data['predictionArgumentSpan']
            args = []
            if len(a_spans) != 0:
                for a_span in a_spans:
                    srl_role_prediction = a_span['rolePredicted']
                    start_idx = a_span['startIdx']
                    end_idx = a_span['endIdx']
                    arg_text = a_span['text']
                    arg_id = a_span['argId']
                    role_prob_list = a_span['probRoles']
                    args.append((arg_id, arg_text))
                    role_probs = {}
                    for role_prob in role_prob_list:
                        role_probs.update(role_prob)
                    arg_role_scores[(s_id, arg_id)] = role_probs
                    arg_role_srl_data[(s_id, arg_id)] = [srl_role_prediction, start_idx, end_idx]
            id_to_args[s_id] = args
        if len(arg_role_scores.keys()) != 0:
            data[process] = [sent_to_id, id_to_args, arg_role_scores, arg_role_srl_data]
    return data


def dump_ilp_json(data, ilp_data, ilp_scores, ilp_out_path):    
    j_dump_data = []
    for process in data.keys():
        # list of sentences
        sent_list = []
        sent_to_id, id_to_args, arg_role_scores, arg_role_srl_data = data[process]
        ilp_score = ilp_scores[process]
        for sentence_text, s_id in sent_to_id.iteritems():
            # list of args
            arg_list = []
            for arg_id, arg_text in id_to_args[s_id]:
                srl_role_prediction, start_idx, end_idx = arg_role_srl_data[(s_id, arg_id)]
                # list of probs
                role_probs = map(lambda x: dict([x]), ilp_score[(s_id, arg_id)].items())
                ilp_r_vals = ilp_data[process][s_id][arg_id]
                ilp_i_vals =  {v: k for k, v in ilp_r_vals.items()}
                if 1 in ilp_i_vals:
                    ilp_role = ilp_config.roles[ilp_i_vals[1]]
                else:
                    ilp_role = "NONE"
                arg_list.append({'argId': arg_id,
                                 'text': arg_text,
                                 'rolePredicted': ilp_role,
                                 'startIdx': start_idx,
                                 'endIdx': end_idx,
                                 'probRoles': role_probs})
            sent_list.append({'sentenceId': s_id,
                              'text': sentence_text,
                              'predictionArgumentSpan': arg_list})
        j_dump_data.append({'process': process,
                            'sentences': sent_list})
    with open(ilp_out_path, 'w') as fp:
            json.dump(j_dump_data, fp, indent=4)


def get_sentences(p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    return [(v, k) for k, v in sent_to_id.iteritems()]


def get_sentence_args(sentence, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_id = sent_to_id[sentence]
    return id_to_args[s_id]


def get_role_scores(sentence, arg_id, role, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_id = sent_to_id[sentence]
    return arg_role_scores[s_id, arg_id][role]


def get_role_score_dict(p_data):
    sentences = get_sentences(p_data)
    roles = ilp_config.roles
    role_score_vars = {}
    for s_id, sentence in sentences:
        args = get_sentence_args(sentence, p_data)
        for a_id, arg in args:
            for r_id, role in enumerate(roles):
                role_score = get_role_scores(sentence, a_id, role, p_data)
                role_score_vars[s_id, a_id, r_id] = role_score
    return role_score_vars


def get_similarity_score(arg1, arg2):
    ret = entailment.get_ai2_textual_entailment(arg1, arg2)
    a_scores = map(lambda x: x['score'], ret['alignments'])
    if len(a_scores):
        mean_a_score = np.mean(a_scores)
    else:
        mean_a_score = 0

    confidence = ret['confidence'] if ret['confidence'] else 0
    score1 = mean_a_score * confidence

    ret = entailment.get_ai2_textual_entailment(arg2, arg1)
    a_scores = map(lambda x: x['score'], ret['alignments'])
    if len(a_scores):
        mean_a_score = np.mean(a_scores)
    else:
        mean_a_score = 0

    confidence = ret['confidence'] if ret['confidence'] else 0
    score2 = mean_a_score * confidence
    return max(score1, score2)


def get_ilp_assignment_from_file(process):
    f = open(join(ilp_config.project_dir,'output', process+'_ilp.sol'))
    lines = f.readlines()
    data = filter(lambda x: x.startswith('Z'), lines)
    data =  map(lambda x: x[:-1], data)

    output_map = defaultdict(lambda: defaultdict(lambda: defaultdict(float)))
    for d in data:
        var, ind = d.split(" ")
        var_ids = var.split("_")
        s = int(var_ids[1])
        a = int(var_ids[2])
        r = int(var_ids[3])
        output_map[s][a][r] = int(ind)
    return output_map


def get_ilp_scores(process, srl_data):
    _, id_to_args, _, _ = srl_data[process]

    output_map = get_ilp_assignment_from_file(process)
    role_score_vals = get_role_score_dict(srl_data[process][:3])

    ilp_scores = defaultdict(lambda: defaultdict(float))

    for s_1, val_1 in output_map.iteritems():
        args_1 = id_to_args[s_1]
        for a_1, aval_1 in val_1.iteritems():
            arg_1 = dict(args_1)[a_1]
            for r, rv_1 in aval_1.iteritems():
                tmp = 0
                for s_2, val_2 in output_map.iteritems():
                    if s_1 != s_2:
                        args_2 = id_to_args[s_2]
                        for a_2, aval_2 in val_2.iteritems():
                            arg_2 = dict(args_2)[a_2]
                            rv_2 = aval_2[r]
                            tmp += rv_2 * float(get_similarity_score(arg_1, arg_2))
                ilp_scores[s_1, a_1][ilp_config.roles[r]] = (float(role_score_vals[s_1, a_1, r]) * ilp_config.lambda_1) + (ilp_config.lambda_2 * tmp)
    return ilp_scores


def normalize_ilp_scores(ilp_scores):
    norm_ilp_scores = {}
    for s_a_id, a_data in ilp_scores.iteritems():
        denom = sum(a_data.values())
        norm_vals = dict(map(lambda x: (x[0], x[1]/denom), a_data.items()))
        norm_ilp_scores[s_a_id]= norm_vals
    return norm_ilp_scores
