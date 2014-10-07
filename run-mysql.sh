#!/bin/bash
docker run -d -p 3306:3306 -e MYSQL_PASS=$1 -v /home/lg/docker-test/mysql/data:/var/lib/mysql --name mysql tutum/mysql2 
