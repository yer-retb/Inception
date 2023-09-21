#!/bin/bash

echo "listen=0.0.0.0:9000" >> /etc/php/7.4/fpm/pool.d/www.conf

wp core download

wp config create --dbname=wordpress --dbuser=user --dbpass=password --dbhost=localhost --dbprefix=wp_

wp core install --url=yourdomain.com --title=Site_Title --admin_user=admin_username --admin_password=admin_password --admin_email=your@email.com

wp user create user user@example.com --role=author