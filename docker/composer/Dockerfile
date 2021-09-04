FROM composer:latest

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
RUN mkdir -p /var/www/html
RUN chown laravel:laravel /var/www/html

WORKDIR /var/www/html
