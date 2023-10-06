#!/bin/bash

sudo service mariadb start

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

mariadb -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mariadb -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mariadb -u root -e "FLUSH PRIVILEGES;"

exec $@
