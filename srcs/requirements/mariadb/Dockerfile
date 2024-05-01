FROM debian:bullseye

RUN apt update - y && apt upgrade && apt install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

RUN script.sh

RUN rm -rf script.sh

CMD ["mysqld_safe"]
