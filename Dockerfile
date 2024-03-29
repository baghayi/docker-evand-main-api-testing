FROM php:7.0-alpine

RUN apk add imagemagick-dev postgresql-dev gcc make autoconf libc-dev libpng-dev zlib-dev icu-dev libxml2-dev
RUN pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install zip \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && docker-php-ext-install soap \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo_pgsql \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer
