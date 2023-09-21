FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt-get install -y php7.4 php-fpm php-mysql mariadb-client curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh .

RUN chmod +x script.sh

RUN service php7.4-fpm start

ENTRYPOINT [ "./script.sh" ]

CMD [ "php-fpm7.4", "-R" "-F" ]

