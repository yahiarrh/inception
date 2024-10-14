FROM debian:bullseye

ARG SQL_DATABASE 
ARG SQL_PASSWORD 
ARG SQL_USER 
ARG SQL_ROOT_PASSWORD 

RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/tools/script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

RUN sh /usr/local/bin/script.sh

RUN rm -rf /usr/local/bin/script.sh

CMD ["mysqld_safe"]
