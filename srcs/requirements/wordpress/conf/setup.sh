#!/bin/sh

mkdir -p /var/www/html/

cd /var/www/html

wp core download --locale=es_ES --allow-root

wp --path=/var/www/html config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --locale=es_ES --allow-root --skip-check

wp core install --path=/var/www/html  --url=${DOMAIN_NAME} --title="sabias que un 90% de los koalas tienen clamidia?" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="aalvarez@student.42urduliz.com" --skip-email --allow-root

wp --path=/var/www/html theme install https://downloads.wordpress.org/theme/photobrust.1.0.1.zip --allow-root
wp --path=/var/www/html theme activate photobrust --allow-root
