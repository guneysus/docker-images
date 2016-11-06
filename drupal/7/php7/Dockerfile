FROM php:7-fpm-alpine


RUN mkdir -p /var/www/html

# RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php && \
#     chmod 755 /var/www/html/index.php

RUN apk add curl libbz2 -U && \
    update-ca-certificates

RUN curl https://ftp.drupal.org/files/projects/drupal-7.51.tar.gz > /var/www/html/drupal-7.51.tar.gz && \
    cd /var/www/html/ && tar xf drupal-7.51.tar.gz

# RUN curl curl https://ftp.drupal.org/files/projects/drupal-8.2.2.tar.gz > /var/www/html/drupal-8.2.2.tar.gz && \
#   cd /var/www/html/ && tar xf drupal-8.2.2.tar.gz  

RUN apk add libpng-dev libjpeg-turbo-dev -U && \
    docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip

RUN apk add "php7-gd" --update-cache --repository "http://nl.alpinelinux.org/alpine/edge/community"
RUN (echo; echo 'user_ini.filename = ".user.ini"') >> /etc/php7/php.ini

# RUN apk add php5-gd
# RUN (echo; echo 'user_ini.filename = ".user.ini"') >> /etc/php5/php.ini

ADD .user.ini /var/www/drupal-7.51/
# ADD .user.ini /var/www/drupal-8.2.2/
