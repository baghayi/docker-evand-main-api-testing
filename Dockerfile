FROM php:7.0

RUN apt-get update -y \
    && apt-get install -y libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install zip \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && docker-php-ext-install soap \
    && docker-php-ext-install pdo_mysql \
    && curl -sS https://getcomposer.org/installer | php