# Process-ILP
ILP over semantic role classifier scores for collective role inference.

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
- Use ```utils/ilp_config.py``` to configure the system. Please go through this file and set appropriate fields before running ILP/Evaluation.
- Most of the data processing happens in ```utils/ilp_utils.py```
- Other utilities needed for entailment, memoization, word2vec scores, etc are in ```utils``` directory.

#### Code
Run ```pip install -r requirements.txt``` within ILP directory after cloning to
install all the python dependencies.  
The following modules are required to run the system:

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

and textual entailment service by [AI2](http://allenai.org) (Allen Institute for Artificial Intelligence).
