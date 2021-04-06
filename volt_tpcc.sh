
#!/bin/bash
set -x

cd ~/voltdb

update-alternatives --config java

export PATH="$PATH:$(pwd)/bin/"
cd tests/test_apps/tpcc

./run.sh server > server.log &

./run.sh init
./run.sh client 2>&1 | tee client.log

