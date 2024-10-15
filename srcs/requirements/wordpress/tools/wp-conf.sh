#!bin/bash

sleep 10

if [ -f "/var/www/wordpress/wp-config.php" ]; then
    echo "WordPress configuration file exists."
else
    cd /var/www/wordpress
    wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb --path='/var/www/wordpress'
    wp core install --allow-root --url=$URL --title=$SITE_TITLE --admin_user=$ADMIN_USR --admin_password=$ADMIN_PSWD --admin_email=$ADMIN_EML
    wp user create $WP_USR $WP_EML --user_pass=$WP_PS --allow-root
fi

php-fpm7.4 -F