FROM debian:bullseye

RUN apt-get -y update && apt-get -y install nginx

RUN apt install vim -y
RUN apt install curl -y

RUN mkdir -p /etc/nginx/ssl

# RUN apt install OpenSSL -y

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Rehamna/L=benguerir/O=42/OU=42/CN=yer-retb.42.fr/UID=yer-retb"

RUN mkdir -p /var/run/nginx

COPY ./conf/nginx.conf  /etc/nginx/conf.d/nginx.conf

RUN chmod 755 /var/www/html

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]