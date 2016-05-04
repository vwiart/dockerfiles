#!/bin/bash

chown -R mysql:mysql /var/lib/mysql
mysql_install_db
mysqld_safe --datadir='/var/lib/mysql' --init-file=/data/init.sql
