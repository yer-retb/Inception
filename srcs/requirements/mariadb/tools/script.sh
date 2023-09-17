#!/bin/bash
service mariadb start 
mariadb -u root -e "CREATE DATABASE 'test';"
mariadb -u root -e "CREATE USER 'usef'@'localhost' IDENTIFIED BY '1234' ; GRANT ALL PRIVILEGES ON *.* TO 'usef'@'localhost' ; FLUSH PRIVILEGES; "
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '1234'; FLUSH PRIVILEGES;"

exec $@ 