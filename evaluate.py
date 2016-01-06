from os import listdir
from os.path import join

import json
import pandas as pd

from collections import defaultdict

from sklearn import metrics
from sklearn.metrics import confusion_matrix
from sklearn.metrics import accuracy_score
from utils import ilp_config
from utils import ilp_utils

__author__ = 'chetannaik'


def get_experiment_stats(experiment, y_gold, y_pred, f):
    """Returns a dataframe containing precision, recall, f1 and accuracy
    of the experiment using gold and predicted labels of the 'f' fold."""
    macro_precision = metrics.precision_score(y_gold, y_pred, average="macro")
    macro_recall = metrics.recall_score(y_gold, y_pred, average="macro")
    macro_f1 = metrics.f1_score(y_gold, y_pred, average="macro")
    accuracy = accuracy_score(y_gold, y_pred)

    srl_result = {}
    macro_data = {'precision':macro_precision,
                  'recall':macro_recall,
                  'f1_score':macro_f1,
                  'accuracy':accuracy}
    srl_result['macro'] = macro_data
    srl_df = pd.DataFrame(srl_result)
    t_data = [srl_df.macro.tolist()]
    arrays = [[experiment], [f]]
    tuples = list(zip(*arrays))
    index = pd.MultiIndex.from_tuples(tuples, names=['experiment', 'fold'])
    s = pd.DataFrame(t_data, index=index, columns=['accuracy', 'f1_score', 'precision', 'recall'])
    s = s[['precision', 'recall', 'f1_score', 'accuracy']]
    return s



def plot_pr_overall(srl_fold_data, ilp_fold_data):
    """Plots overall (role specific separation not done) precision recall"""
    srl_plot_data = {}
    for f, filtered_data_srl in srl_fold_data.iteritems():
        # SRL Stuff
        # filter and keep only the entries which contain positive_role (check
        # ilp_config.py) either as gold label or as predict label. i.e if both
        # gold label and predicted label has negative role, NONE, drop that
        # entry. Then sort the entries based on score and calculate running
        # precision and recall.
        filtered_srl_correct = filter(lambda x: x[1][0] in ilp_config.positive_roles or x[1][1][0] in ilp_config.positive_roles, filtered_data_srl.items())
        sorted_srl_correct = sorted(filtered_srl_correct, key=lambda x: x[1][1][1], reverse=True)

        srl_yield = []
        gold_role_total = 0
        gold_role_predicted = 0
        total_role_predicted = 0
        for x in sorted_srl_correct:
            key, data = x
            gold_role, srl_data = data
            srl_role, srl_score = srl_data
            if gold_role in ilp_config.positive_roles:
                gold_role_total += 1
                if srl_role == gold_role:
                    gold_role_predicted += 1
            if srl_role in ilp_config.positive_roles:
                total_role_predicted += 1
            if gold_role_predicted != 0 and total_role_predicted != 0:
                precision = gold_role_predicted/float(total_role_predicted)
            else:
                precision = 0
            srl_yield.append((gold_role_predicted, gold_role_total, precision))

        srl_df = pd.DataFrame(srl_yield)
        srl_df.columns = ['yield', 'total_predicted', 'precision']
        srl_df['recall'] = srl_df['yield']/max(srl_df.total_predicted.tolist())
        srl_yield_df = srl_df.set_index(['recall'])
        srl_yield_df = srl_yield_df['precision']
        srl_plot_df = pd.DataFrame(srl_yield_df)
        srl_plot_data[f] = srl_plot_df

    # ILP Stuff
    ilp_plot_data = {}
    for f, filtered_data_ilp in ilp_fold_data.iteritems():
        # filter and keep only the entries which contain positive_role (check
        # ilp_config.py) either as gold label or as predict label. i.e if both
        # gold label and predicted label has negative role, NONE, drop that
        # entry. Then sort the entries based on score and calculate running
        # precision and recall.
        filtered_ilp_correct = filter(lambda x: x[1][0] in ilp_config.positive_roles or x[1][1][0] in ilp_config.positive_roles, filtered_data_ilp.items())
        sorted_ilp_correct = sorted(filtered_ilp_correct, key=lambda x: x[1][1][1], reverse=True)

        ilp_yield = []
        gold_role_total = 0
        gold_role_predicted = 0
        total_role_predicted = 0
        for x in sorted_ilp_correct:
            key, data = x
            gold_role, ilp_data = data
            ilp_role, ilp_score = ilp_data
            if gold_role in ilp_config.positive_roles:
                gold_role_total += 1
                if ilp_role == gold_role:
                    gold_role_predicted += 1
            if ilp_role in ilp_config.positive_roles:
                total_role_predicted += 1
            if gold_role_predicted != 0 and total_role_predicted != 0:
                precision = gold_role_predicted/float(total_role_predicted)
            else:
                precision = 0
            ilp_yield.append((gold_role_predicted, gold_role_total, precision))

        ilp_df = pd.DataFrame(ilp_yield)
        ilp_df.columns = ['yield', 'total_predicted', 'precision']
        ilp_df['recall'] = ilp_df['yield']/max(ilp_df.total_predicted.tolist())
        ilp_yield_df = ilp_df.set_index(['recall'])
        ilp_yield_df = ilp_yield_df['precision']
        ilp_plot_df = pd.DataFrame(ilp_yield_df)
        ilp_plot_data[f] = ilp_plot_df

    # call plot function
    ilp_utils.plot_role_plot((srl_plot_data, ilp_plot_data), name='overall_fold_subplots')


def plot_pr_role(srl_fold_data, ilp_fold_data):
    """Plots precision recall of each of the roles."""
    all_data = {}
    for current_role in ilp_config.all_roles:
        srl_plot_data = {}
        for f, filtered_data_srl in srl_fold_data.iteritems():
            # SRL Stuff
            # filter and keep only the entries which contain current_role either
            # as gold label or as predict label. i.e if both gold label and
            # predicted label has negative role,  drop that entry. Then sort
            # the entries based on score and calculate running precision and recall.
            filtered_srl_correct = filter(lambda x: x[1][0] == current_role or x[1][1][0] == current_role, filtered_data_srl.items())
            sorted_srl_correct = sorted(filtered_srl_correct, key=lambda x: x[1][1][1], reverse=True)

            srl_yield = []
            gold_role_total = 0
            gold_role_predicted = 0
            total_role_predicted = 0
            for x in sorted_srl_correct:
                key, data = x
                gold_role, srl_data = data
                srl_role, srl_score = srl_data
                if gold_role == current_role:
                    gold_role_total += 1
                    if srl_role == gold_role:
                        gold_role_predicted += 1
                if srl_role == current_role:
                    total_role_predicted += 1
                if gold_role_predicted != 0 and total_role_predicted != 0:
                    precision = gold_role_predicted/float(total_role_predicted)
                else:
                    precision = 0
                srl_yield.append((gold_role_predicted, gold_role_total, precision))

            srl_df = pd.DataFrame(srl_yield)
            srl_df.columns = ['yield', 'total_predicted', 'precision']
            srl_df['recall'] = srl_df['yield']/max(srl_df.total_predicted.tolist())
            srl_yield_df = srl_df.set_index(['recall'])
            srl_yield_df = srl_yield_df['precision']
            srl_plot_df = pd.DataFrame(srl_yield_df)
            srl_plot_data[f] = srl_plot_df

        # ILP Stuff
        ilp_plot_data = {}
        for f, filtered_data_ilp in ilp_fold_data.iteritems():
            # filter and keep only the entries which contain current_role either
            # as gold label or as predict label. i.e if both gold label and
            # predicted label has negative role, drop that entry. Then sort
            # the entries based on score and calculate running precision and recall.
            filtered_ilp_correct = filter(lambda x: x[1][0] == current_role or x[1][1][0] == current_role, filtered_data_ilp.items())
            sorted_ilp_correct = sorted(filtered_ilp_correct, key=lambda x: x[1][1][1], reverse=True)

            ilp_yield = []
            gold_role_total = 0
            gold_role_predicted = 0
            total_role_predicted = 0
            for x in sorted_ilp_correct:
                key, data = x
                gold_role, ilp_data = data
                ilp_role, ilp_score = ilp_data
                if gold_role == current_role:
                    gold_role_total += 1
                    if ilp_role == gold_role:
                        gold_role_predicted += 1
                if ilp_role == current_role:
                    total_role_predicted += 1
                if gold_role_predicted != 0 and total_role_predicted != 0:
                    precision = gold_role_predicted/float(total_role_predicted)
                else:
                    precision = 0
                ilp_yield.append((gold_role_predicted, gold_role_total, precision))
            ilp_df = pd.DataFrame(ilp_yield)
            ilp_df.columns = ['yield', 'total_predicted', 'precision']
            ilp_df['recall'] = ilp_df['yield']/max(ilp_df.total_predicted.tolist())
            ilp_yield_df = ilp_df.set_index(['recall'])
            ilp_yield_df = ilp_yield_df['precision']
            ilp_plot_df = pd.DataFrame(ilp_yield_df)
            ilp_plot_data[f] = ilp_plot_df
        all_data[current_role] = (srl_plot_data, ilp_plot_data)

    # call plot function
    for role in ilp_config.all_roles:
        ilp_utils.plot_role_plot(all_data[role], name='role_fold_subplots', role=role)


def plot_pr_overall_concatenated(srl_fold_data, ilp_fold_data):
    """Plots overall precision recall after joining data from all the folds"""
    # concatenate data from all folds into a single dictionary which has
    # as key (sentence_id, start_index, end_index)
    # as value (gold_role, (predicted_role, prediction_score))
    # (i.e all fold id based separation is taken off).
    srl_all_data = {}
    for f, f_data in srl_fold_data.iteritems():
        srl_all_data.update(f_data)

    ilp_all_data = {}
    for f, f_data in ilp_fold_data.iteritems():
        ilp_all_data.update(f_data)

    # SRL Stuff
    # check documentation above :)
    filtered_srl_correct = filter(lambda x: x[1][0] in ilp_config.positive_roles or x[1][1][0] in ilp_config.positive_roles, srl_all_data.items())
    sorted_srl_correct = sorted(filtered_srl_correct, key=lambda x: x[1][1][1], reverse=True)

    srl_yield = []
    gold_role_total = 0
    gold_role_predicted = 0
    total_role_predicted = 0

    for x in sorted_srl_correct:
        key, data = x
        gold_role, srl_data = data
        srl_role, srl_score = srl_data

        if gold_role in ilp_config.positive_roles:
            gold_role_total += 1
            if srl_role == gold_role:
                gold_role_predicted += 1

        if srl_role in ilp_config.positive_roles:
            total_role_predicted += 1

        if gold_role_predicted != 0 and total_role_predicted != 0:
            precision = gold_role_predicted/float(total_role_predicted)
        else:
            precision = 0
        srl_yield.append((gold_role_predicted, gold_role_total, precision))

    srl_df = pd.DataFrame(srl_yield)
    srl_df.columns = ['yield', 'total_predicted', 'precision']
    srl_df['recall'] = srl_df['yield']/max(srl_df.total_predicted.tolist())
    srl_yield_df = srl_df.set_index(['recall'])
    srl_yield_df = srl_yield_df['precision']
    srl_plot_df = pd.DataFrame(srl_yield_df)

    # ILP Stuff
    # check documentation above :)
    filtered_ilp_correct = filter(lambda x: x[1][0] in ilp_config.positive_roles or x[1][1][0] in ilp_config.positive_roles, ilp_all_data.items())
    sorted_ilp_correct = sorted(filtered_ilp_correct, key=lambda x: x[1][1][1], reverse=True)

    ilp_yield = []
    gold_role_total = 0
    gold_role_predicted = 0
    total_role_predicted = 0

    for x in sorted_ilp_correct:
        key, data = x
        gold_role, ilp_data = data
        ilp_role, ilp_score = ilp_data
        if gold_role in ilp_config.positive_roles:
            gold_role_total += 1
            if ilp_role == gold_role:
                gold_role_predicted += 1

        if ilp_role in ilp_config.positive_roles:
            total_role_predicted += 1
        if gold_role_predicted != 0 and total_role_predicted != 0:
            precision = gold_role_predicted/float(total_role_predicted)
        else:
            precision = 0
        ilp_yield.append((gold_role_predicted, gold_role_total, precision))

    ilp_df = pd.DataFrame(ilp_yield)
    ilp_df.columns = ['yield', 'total_predicted', 'precision']
    ilp_df['recall'] = ilp_df['yield']/max(ilp_df.total_predicted.tolist())
    ilp_yield_df = ilp_df.set_index(['recall'])
    ilp_yield_df = ilp_yield_df['precision']
    ilp_plot_df = pd.DataFrame(ilp_yield_df)

    # call plot function
    ilp_utils.plot_precision_yield((srl_plot_df, ilp_plot_df), name='overall_combined')


def plot_pr_role_concatenated(srl_fold_data, ilp_fold_data):
    """Plots precision recall of each of the roles after joining data from all
    the folds"""
    # concatenate data from all folds into a single dictionary which has
    # as key (sentence_id, start_index, end_index)
    # as value (gold_role, (predicted_role, prediction_score))
    # (i.e all fold id based separation is taken off).
    srl_all_data = {}
    for f, f_data in srl_fold_data.iteritems():
        srl_all_data.update(f_data)

    ilp_all_data = {}
    for f, f_data in ilp_fold_data.iteritems():
        ilp_all_data.update(f_data)

    all_data = {}
    for current_role in ilp_config.all_roles:
        # SRL Stuff
        # check documentation above :)
        filtered_srl_correct = filter(lambda x: x[1][0] == current_role or x[1][1][0] == current_role, srl_all_data.items())
        sorted_srl_correct = sorted(filtered_srl_correct, key=lambda x: x[1][1][1], reverse=True)

        srl_yield = []
        gold_role_total = 0
        gold_role_predicted = 0
        total_role_predicted = 0
        for x in sorted_srl_correct:
            key, data = x
            gold_role, srl_data = data
            srl_role, srl_score = srl_data

            if gold_role == current_role:
                gold_role_total += 1
                if srl_role == gold_role:
                    gold_role_predicted += 1
            if srl_role == current_role:
                total_role_predicted += 1
            if gold_role_predicted != 0 and total_role_predicted != 0:
                precision = gold_role_predicted/float(total_role_predicted)
            else:
                precision = 0
            srl_yield.append((gold_role_predicted, gold_role_total, precision))

        srl_df = pd.DataFrame(srl_yield)
        srl_df.columns = ['yield', 'total_predicted', 'precision']

        srl_df['recall'] = srl_df['yield']/max(srl_df.total_predicted.tolist())
        srl_yield_df = srl_df.set_index(['recall'])
        srl_yield_df = srl_yield_df['precision']
        srl_plot_df = pd.DataFrame(srl_yield_df)

        # ILP Stuff
        # check documentation above :)
        filtered_ilp_correct = filter(lambda x: x[1][0] == current_role or x[1][1][0] == current_role, ilp_all_data.items())
        sorted_ilp_correct = sorted(filtered_ilp_correct, key=lambda x: x[1][1][1], reverse=True)
        ilp_yield = []
        gold_role_total = 0
        gold_role_predicted = 0
        total_role_predicted = 0
        for x in sorted_ilp_correct:
            key, data = x
            gold_role, ilp_data = data
            ilp_role, ilp_score = ilp_data

            if gold_role == current_role:
                gold_role_total += 1
                if ilp_role == gold_role:
                    gold_role_predicted += 1
            if ilp_role == current_role:
                total_role_predicted += 1
            if gold_role_predicted != 0 and total_role_predicted != 0:
                precision = gold_role_predicted/float(total_role_predicted)
            else:
                precision = 0
            ilp_yield.append((gold_role_predicted, gold_role_total, precision))

        ilp_df = pd.DataFrame(ilp_yield)
        ilp_df.columns = ['yield', 'total_predicted', 'precision']
        ilp_df['recall'] = ilp_df['yield']/max(ilp_df.total_predicted.tolist())
        ilp_yield_df = ilp_df.set_index(['recall'])
        ilp_yield_df = ilp_yield_df['precision']
        ilp_plot_df = pd.DataFrame(ilp_yield_df)
        all_data[current_role] = (srl_plot_df, ilp_plot_df)

    for cur_role in ilp_config.all_roles:
        ilp_utils.plot_precision_yield(all_data[cur_role], name='role_combined', role=cur_role)


def plot_confusion_matrix():
    """Plot confusion matrix and also generate the accuracy table."""
    srl_fold_data = {}
    ilp_fold_data = {}
    for f, fold_dir in enumerate(listdir(ilp_config.cross_val_dir)):
        fold_path = join(ilp_config.cross_val_dir, fold_dir)
        # read gold data
        d_gold_file = join(fold_path, 'test', 'test.srlout.json')
        d_gold = json.load(open(d_gold_file, "r"))
        gold_data = ilp_utils.get_gold_data(d_gold)
        # read srl data
        d_srl_file = join(fold_path, 'test', 'test.srlpredict.json')
        d_srl = json.load(open(d_srl_file, "r"))
        srl_data = ilp_utils.get_prediction_data(d_srl)
        # read ilp data
        d_ilp_file = join(fold_path, 'test', 'test.ilppredict.json')
        d_ilp = json.load(open(d_ilp_file, "r"))
        ilp_data = ilp_utils.get_prediction_data(d_ilp)
        # create dictionaries containing gold & srl and gold & ilp data.
        srl_analysis_data = {k: (gold_data[k], v) for k, v in srl_data.iteritems() if k in gold_data}
        ilp_analysis_data = {k: (gold_data[k], v) for k, v in ilp_data.iteritems() if k in gold_data}
        y_gold_srl = map(lambda x: x[0], srl_analysis_data.values())
        y_srl = map(lambda x: x[1][0], srl_analysis_data.values())
        y_gold_ilp = map(lambda x: x[0], ilp_analysis_data.values())
        y_ilp = map(lambda x: x[1][0], ilp_analysis_data.values())
        srl_fold_data[f+1] = (y_gold_srl, y_srl)
        ilp_fold_data[f+1] = (y_gold_ilp, y_ilp)

    srl_f_dfs = []
    ilp_f_dfs = []
    for f, f_data in srl_fold_data.iteritems():
        y_gold, y_predict = f_data
        df = get_experiment_stats("SRL", y_gold, y_predict, f)
        srl_f_dfs.append(df)

    for f, f_data in ilp_fold_data.iteritems():
        y_gold, y_predict = f_data
        df = get_experiment_stats("ILP", y_gold, y_predict, f)
        ilp_f_dfs.append(df)

    srl_df = pd.concat(srl_f_dfs)
    ilp_df = pd.concat(ilp_f_dfs)
    df = pd.concat([srl_df, ilp_df])
    print "-- Generating Accuracy Table"
    ilp_utils.generate_tex_table(df, name='experiment_accuracy_table')

    srl_c_matrices = {}
    for f, f_data in srl_fold_data.iteritems():
        y_gold, y_srl = f_data
        srl_c_matrix = confusion_matrix(y_gold, y_srl, ilp_config.labels)
        srl_c_matrices[f] = srl_c_matrix
    ilp_utils.plot_confusion_subplots(srl_c_matrices, name="srl_confusion_matrix")

    ilp_c_matrices = {}
    for f, f_data in ilp_fold_data.iteritems():
        y_gold, y_ilp = f_data
        ilp_c_matrix = confusion_matrix(y_gold, y_ilp, ilp_config.labels)
        ilp_c_matrices[f] = ilp_c_matrix
    ilp_utils.plot_confusion_subplots(srl_c_matrices, name="ilp_confusion_matrix")

    # to plot individual fold confusion
    # ilp_utils.plot_confusion_matrix(srl_c_matrices[1], 1, filename='fold1_srl_confusion')


def main():
    # iterate over cross-val fold directories and create a dictionary which contains
    # fold number as key and in the value it contains another dictionary which has
    # as key (sentence_id, start_index, end_index)
    # as value (gold_role, (predicted_role, prediction_score))
    srl_fold_data = {}
    ilp_fold_data = {}
    for f, fold_dir in enumerate(listdir(ilp_config.cross_val_dir)):
        fold_path = join(ilp_config.cross_val_dir, fold_dir)

        d_gold_file = join(fold_path, 'test', 'test.srlout.json')
        d_gold = json.load(open(d_gold_file, "r"))
        gold_data = ilp_utils.get_gold_data(d_gold)

        d_srl_file = join(fold_path, 'test', 'test.srlpredict.json')
        d_srl = json.load(open(d_srl_file, "r"))
        srl_data = ilp_utils.get_prediction_data(d_srl)

        d_ilp_file = join(fold_path, 'test', 'test.ilppredict.json')
        d_ilp = json.load(open(d_ilp_file, "r"))
        ilp_data = ilp_utils.get_prediction_data(d_ilp)

        srl_analysis_data = {k: (gold_data[k], v) for k, v in srl_data.iteritems() if k in gold_data}
        ilp_analysis_data = {k: (gold_data[k], v) for k, v in ilp_data.iteritems() if k in gold_data}

        srl_fold_data[f+1] = srl_analysis_data
        ilp_fold_data[f+1] = ilp_analysis_data

    print "-- Plotting [Overall] [Sepatate] plots."
    plot_pr_overall(srl_fold_data, ilp_fold_data)
    print "-- Plotting [Role] [Sepatate] plots."
    plot_pr_role(srl_fold_data, ilp_fold_data)
    print "-- Plotting [Overall] [Concatenated] plots."
    plot_pr_overall_concatenated(srl_fold_data, ilp_fold_data)
    print "-- Plotting [Role] [Concatenated] plots."
    plot_pr_role_concatenated(srl_fold_data, ilp_fold_data)
    print "-- Plotting Confusion Matrices."
    plot_confusion_matrix()
    print "-- Done"


if __name__ == '__main__':
    main()
