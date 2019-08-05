FROM php:7.2-fpm
RUN apt-get update && apt-get install -y \
        git \
        libzip-dev \
        zip \
        unzip \
        libpq-dev \
	libfreetype6 \
        libjpeg62-turbo \
        libxpm4 \
        libpng16-16 \
        libxslt1.1 \
        libmemcachedutil2 \
        imagemagick \
        nano
RUN set -xe \
    && buildDeps=" \
        $PHP_EXTRA_BUILD_DEPS \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libxpm-dev \
        libpng-dev \
        libxslt1-dev \
        libmemcached-dev \
        libxml2-dev \
    " \
	&& apt-get update -q -y && apt-get install -q -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* \
# Extract php source and install missing extensions
    && docker-php-source extract 
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ --with-xpm-dir=/usr/include/ --enable-gd-jis-conv
RUN docker-php-ext-install exif gd mbstring intl xsl pgsql pdo_pgsql pdo_mysql mysqli zip

RUN curl --silent --show-error https://getcomposer.org/installer | php && \
        mv composer.phar /usr/local/bin/composer

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

#RUN pecl install redis
#RUN docker-php-ext-enable redis
