#!/bin/bash

echo "listen=9000" >> /etc/php/7.4/fpm/pool.d/www.conf

wp core download --allow-root

wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST} --allow-root

wp core install --url=${WP_URL} --title=${WP_TITEL} --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root

wp user create ${WP_USER} ${WP_USER_EMAIL} --role=author --user_pass=${WP_USER_PW} --allow-root

php-fpm7.4 -R -F