#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $script_dir/mysql
docker build -t tutum/mysql .

cd $script_dir/memcached
docker build -rm -t fedora/memcached .
