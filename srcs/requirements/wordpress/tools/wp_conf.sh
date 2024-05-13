#!bin/bash


if [ -f "/var/www/wordpress/wp-config.php"]

else
    cd /var/www/wordpress
    wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'
    # wp core install --url=$URL --title=$SITE_TITLE --admin_user=$ADMIN_USR --admin_password=$ADMIN_PSWD --admin_email=$ADMIN_EML
