FROM php:7.3-cli-alpine

MAINTAINER Dominic <dominic@xigen.co.uk>

RUN php --version

ENV COMPOSER_HOME /composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH /composer/vendor/bin:$PATH
ENV PHP_CONF_DIR=/usr/local/etc/php/conf.d

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk add --no-cache \ 
    $PHPIZE_DEPS \
    zlib-dev \
    icu-dev \
    g++ \
    && pecl install xdebug-2.9.6 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pcntl \
    && docker-php-ext-install exif \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
    && docker-php-ext-enable intl \
    && php -m

RUN echo "memory_limit=-1" > $PHP_CONF_DIR/99_memory-limit.ini \
    && apk add git \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

RUN composer global require phpunit/phpunit:^9.3

VOLUME ["/code"]
WORKDIR /code
