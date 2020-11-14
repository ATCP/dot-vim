#!/bin/bash
set -x

cd ~/voltdb

update-alternatives --config java

export PATH="$PATH:$(pwd)/bin/"
cd tests/test_apps/kvbenchmark

./run.sh
./run.sh server > server.log &

./run.sh client 2>&1 | tee client.log

