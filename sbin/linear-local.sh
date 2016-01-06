#!/bin/bash


app=linear
wormhole_home=~/dev-pla/wormhole

n_worker=100
n_server=10

t=`date +"%Y%m%d-%H-%M-%S"`
log_dir=~/dev-pla/wormhole/logs/${app}-${t}

${wormhole_home}/tracker/dmlc_local.py -n $n_worker -s $n_server --log-level INFO  \
${wormhole_home}/bin/linear.dmlc \
${wormhole_home}/sbin/linear_train.conf  --log_dir=${log_dir}
