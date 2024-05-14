FROM debian:bullseye

RUN apt update -y && apt upgrade -y\
    && apt install nginx -y && apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes \
    -out /etc/nginx/ssl/inception.crt \ 
    -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=MO/L=KH/O=1337/OU=student/CN=yrrhaibi.1337.ma"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf