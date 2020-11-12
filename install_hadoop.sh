#!/bin/bash

set -x

apt-get update
apt-get install -y software-properties-common

add-apt-repository ppa:openjdk-r/ppa

apt-get update
apt-get -y install ant build-essential ant-optional openjdk-8-jdk python cmake valgrind ntp ccache git git-email python-httplib2 python-setuptools python-dev apt-show-versions wget

update-alternatives --config java
#
#ssh-keygen

#cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

#ssh 127.0.0.1

wget https://archive.apache.org/dist/hadoop/core/hadoop-2.6.0/hadoop-2.6.0.tar.gz

tar -zxvf hadoop-2.6.0.tar.gz

mv hadoop-2.6.0 hadoop
sudo source set_env.sh

hadoop

