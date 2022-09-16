FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# need to 
RUN mkdir -p /run/php


RUN apt-get -y update && apt-get install software-properties-common -y

RUN add-apt-repository ppa:ondrej/php

RUN apt-get install -y vim \
    less \
    php8.1 \
    php8.1-fpm \
    php8.1-curl \
    php8.1-xml \
    php8.1-bcmath \
    php8.1-zip \
    php8.1-mbstring \
    composer

RUN sed  -i 's/^listen\s*=.*$/listen = 9000/g' /etc/php/8.1/fpm/pool.d/www.conf

RUN mkdir /php-app && chown -R www-data:www-data /php-app

EXPOSE 9000

CMD ["/usr/sbin/php-fpm8.1", "-F", "-R"]



