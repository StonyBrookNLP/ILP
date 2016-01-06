# Process-ILP
ILP over semantic role classifier scores for collective inference.

##### How to run?
```$ python ilp_joint.py``` to run ILP optimization.  
```$ python evaluate.py``` to run evaluation module and get statistics.

##### Input/Output
- Cross-validation folds from Role Classifier is stored in ```data/cross-val``` directory. The input files are accessed from here.
- After ILP runs optimization over sentences of a process, output jsons are stored in the same input directory with the file name ```test.srlpredict.json```.
- ILP assignments and objective functions generated for each process is saved in ```outputs``` directory.

##### Evaluation output
All evaluation outputs are stored in ```plots``` directory.

##### Config/Utils
- All the configuration is stired in ```utils/ilp_config.py```. Please go through this file and set appropriate configurations before running ILP/Evaluation.
- Most of the data processing happens in ```utils/ilp_utils.py```
- Other utilities needed for evtailment, memoization, word2vec scores, etc are in ```utils``` directory.

#### Code
Run ```pip install -r requirements.txt``` within ILP directory after cloning to
install all the python dependencies.  
The following modules are required to run the system:

  * Python 2.7
  * gurobipy
  * NumPy
  * Pandas
  * pathos
  * cPickle
  * gensim
  * retrying
  * scikit-learn
  * nltk
  * Matplotlib
  * Seaborn
  * tqdm
  * Requests
  * JSON

and textual alignment service by [AI2](http://allenai.org) (Allen Institute for Artificial Intelligence).
