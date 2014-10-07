#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${script_dir%%}/config.txt

./run-mysql.sh $mysql_password $mysql_data
./run-memcached.sh $memcached_password
