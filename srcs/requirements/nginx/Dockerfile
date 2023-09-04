FROM debian:bullseye

RUN apt-get -y update && apt-get -y install nginx

COPY ./conf/conf.conf  /etc/nginx/conf.d/nginx.conf

COPY index.html /var/www/html

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]