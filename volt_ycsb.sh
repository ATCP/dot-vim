#!/bin/bash

set -x
cd ~/voltdb

#curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
#tar xfvz ycsb-0.17.0.tar.gz
#cd ycsb-0.17.0

export PATH="$PATH:$(pwd)/bin/"

export YCSB_HOME="/home/ubuntu/voltdb/ycsb-0.17.0"
echo $YCSB_HOME
cd ~/voltdb/tests/test_apps/ycsb

./run.sh server > server.log &
#./run.sh init

echo "recordcount=10000000
      operationcount=10000000
      voltdb.servers=localhost
      threadcount=1
      maxexecutiontime=300" > $YCSB_HOME/voltdb.properties

cd ~/voltdb/ycsb-0.17.0

bin/ycsb.sh load voltdb -P workloads/workloada -P voltdb.properties 

bin/ycsb.sh run voltdb -P workloads/workloada -P voltdb.properties 
    

