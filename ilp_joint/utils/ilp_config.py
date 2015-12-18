from os.path import join

max_processes = 1

roles = ['undergoer', 'enabler', 'trigger', 'result', 'NONE']

lambda_1 = 0.9
lambda_2 = 1 - lambda_1

project_dir = '/home/cnaik/s/3/ilp/ilp_joint'
cross_val_dir = join(project_dir, 'data', 'cross-val')

srl_file_name = 'test.srlpredict.json'
srl_file_path = join(project_dir, 'data', srl_file_name)

ilp_out_file_name = 'ilp_predict.json'
ilp_out_path = join(project_dir,'output', ilp_out_file_name)
