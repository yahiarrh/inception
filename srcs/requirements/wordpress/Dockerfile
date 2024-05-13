FROM debian:bullseye

RUN apt update -y && apt upgrade -y\
    && apt-get -y install wget

RUN apt-get install -y php7.4\
	php-fpm\
	php-mysql\
	mariadb-client

RUN wget https://wordpress.org/latest.tar.gz -P /var/www

WORKDIR /var/www

RUN tar -xzf latest.tar.gz && rm latest.tar.gz

RUN	chown -R root:root /var/www/wordpress

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp