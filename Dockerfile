FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get -y update && apt-get install software-properties-common -y

RUN add-apt-repository ppa:ondrej/php

RUN apt-get -y update && apt-get -y install nginx \
    vim \
    less \
    php8.1 \
    php8.1-fpm \
    php8.1-curl \
    php8.1-xml \
    php8.1-bcmath \
    php8.1-zip \
    php8.1-mbstring 

RUN service php8.1-fpm start

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


