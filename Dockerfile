FROM mawalu/docker-nginx-php

MAINTAINER Martin Wagner <web@mawalabs.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y php-mysql php-mbstring php-gd php-curl php-dom php-zip
RUN rm -rf /var/www/html

COPY config/vhost.conf /etc/nginx/sites-available/default
