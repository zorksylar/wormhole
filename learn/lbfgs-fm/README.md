Factorization Machine
====
* input format: LibSVM
* Local Example: [run-fm.sh](run-fm.sh)
* Runnig on YARN: [run-yarn.sh](run-yarn.sh)

Multi-Threading Optimization
====
* The code can be  multi-threaded, we encourage you to use it
  - Simply add ```nthread=k``` where k is the number of threads you want to use
* If you submit with YARN 
  - Use ```--vcores``` and ```-mem``` to request CPU and memory resources
  - Some scheduler in YARN do not honor CPU request, you can request more memory to grab working slots
* Usually multi-threading improves speed in general
  - You can use less workers and assign more resources to each of worker
  - This usually means less communication overhead and faster running time

Parameters
====
All the parameters can be set by param=value

#### Important Parameters
* nfactor [default = 10]
  - the embedding dimension
* objective [default = logistic]
  - can be linear or logistic
* base_score [default = 0.5]
  - global bias, recommended set to mean value of label
* reg_L1 [default = 0]
  - l1 regularization co-efficient
* reg_L2 [default = 0]
  - l2 regularization co-efficient
* reg_L2_V [default = reg_L2]
  - l2 regularization for embedding V
* fm_random [default = 0.01]
  - gaussian random initialization for weights co-efficient
* lbfgs_stop_tol [default = 1e-5]
  - relative tolerance level of loss reduction with respect to initial loss
* max_lbfgs_iter [default = 500]
  - maximum number of lbfgs iterations

### Optimization Related parameters
* min_lbfgs_iter [default = 5]
  - minimum number of lbfgs iterations
* max_linesearch_iter [default = 100] 
  - maximum number of iterations in linesearch
* linesearch_c1 [default = 1e-4] 
  - c1 co-efficient in backoff linesearch
* linesarch_backoff [default = 0.5]
  - backoff ratio in linesearch
 
