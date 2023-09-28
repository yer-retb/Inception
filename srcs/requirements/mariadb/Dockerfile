FROM debian:bullseye

RUN apt update -y

RUN apt upgrade -y

ARG MYSQL_DATABASE MYSQL_USER MYSQL_PASSWORD MYSQL_ROOT_PASSWORD

RUN apt-get install mariadb-server -y

COPY ./tools/script.sh ./script.sh

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x script.sh

RUN ./script.sh

CMD [ "mariadbd" ]