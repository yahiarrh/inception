#!bin/bash

service mariadb start

mariadb -u root -p$SQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"

mariadb -u root -p$SQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS ${SQL_USER}@'%' IDENTIFIED BY '$SQL_PASSWORD';"

mariadb -u root -p$SQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO ${SQL_USER}@'%' IDENTIFIED BY '$SQL_PASSWORD';"

mariadb -u root -p$SQL_ROOT_PASSWORD -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$SQL_ROOT_PASSWORD';"

mariadb -u root -p$SQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown 

exec mysqld_safe