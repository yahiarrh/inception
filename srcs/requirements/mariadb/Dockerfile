FROM debian:bullseye

ARG SQL_DATABASE 
ARG SQL_PASSWORD 
ARG SQL_USER 
ARG SQL_ROOT_PASSWORD 

RUN apt update -y && apt install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

CMD ["/usr/local/bin/script.sh"]
