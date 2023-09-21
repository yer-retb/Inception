#!/bin/bash

service mariadb start 

mariadb -u root -e "CREATE USER IF NOT EXISTS 'usef'@'%' IDENTIFIED BY '1234';"

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS test;"

mariadb -u root -e "GRANT ALL PRIVILEGES ON test.* to 'usef'@'%';"

mariadb -u root -e "ALTER USER 'root'@'%' IDENTIFIED BY '1234'; "

mariadb -u root -e "FLUSH PRIVILEGES;"
