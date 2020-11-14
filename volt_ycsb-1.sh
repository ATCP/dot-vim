#!/bin/bash

set -x

cd ~/voltdb
export PATH="$PATH:$(pwd)/bin/"

cd ~/voltdb/tests/test_apps/ycsb
wget https://github.com/brianfrankcooper/YCSB/releases/download/0.10.0/ycsb-0.10.0.tar.gz
tar -xvzf ycsb-0.10.0.tar.gz

export YCSB_HOME="/home/ubuntu/voltdb/tests/test_apps/ycsb/ycsb-0.10.0"

echo $YCSB_HOME

cd ~/voltdb/tests/test_apps/ycsb

./run.sh server > server.log &
./run.sh init
./run.sh load
./run.sh workload
./run.sh clean
