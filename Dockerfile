FROM php:7.4-apache

RUN set -x
RUN sed -i.bak -e "s%http://deb.debian.org/debian%http://ftp.riken.jp/pub/Linux/debian/debian%g" /etc/apt/sources.list

RUN apt update \
    && apt install -y libzip-dev \
    && apt install -y npm \
    && docker-php-ext-install zip
RUN apt install -y --no-install-recommends \
    sudo \
    git \
    libxml2-dev \
    unzip \
    wget \
    zlib1g-dev \
    iproute2 \
    libsqlite3-dev \
    libpq-dev \
    libicu-dev \
    gnupg2 \
    zlib1g-dev \
    libonig-dev \
    python
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt update \
    && apt install -y nodejs \
    && apt clean
RUN docker-php-ext-install \
    intl \
    mbstring \
    pdo \
    pdo_sqlite \
    pdo_mysql \
    pdo_pgsql \
    soap \
    xml \
    zip
RUN pecl install xdebug
RUN pecl install apcu
RUN docker-php-ext-enable \
    xdebug \
    apcu \
    opcache \
    && a2enmod rewrite \
    && apt clean \
    && rm -rf /tmp/*

RUN curl -sS https://getcomposer.org/installer \
    |  php -- \
    --filename=composer \
    --install-dir=/usr/local/bin \
    && chown www-data /var/www \
    && chmod g+s /var/www/html

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
