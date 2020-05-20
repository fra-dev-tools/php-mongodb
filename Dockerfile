FROM php:7.3.18-fpm

RUN apt-get update

RUN pecl install mongodb-1.7.4 && \
    docker-php-ext-enable mongodb

RUN docker-php-ext-install opcache && \
    docker-php-ext-enable opcache

ENV PHP_OPCACHE_ENABLED=1

COPY opcache.ini /usr/local/etc/php/conf.d/opcache.ini
