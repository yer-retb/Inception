#!/bin/bash

wp core download

wp config create --dbname=wordpress --dbuser=user --dbpass=password --dbhost=localhost --dbprefix=wp_ --allow-root

wp core install --url=yourdomain.com --title=Site_Title --admin_user=admin_username --admin_password=admin_password --admin_email=your@email.com --allow-root

wp user create user user@example.com --role=author --allow-root

exec "$@"