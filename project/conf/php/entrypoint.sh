#!/bin/bash

cron -f &
docker-php-entrypoint php-fpm
# /usr/bin/php /var/www/html/artisan websockets:serve