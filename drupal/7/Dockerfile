FROM guneysu/lighttpd:1.4.43

RUN apk update

RUN apk add curl libbz2 && \
    update-ca-certificates && \
    curl https://ftp.drupal.org/files/projects/drupal-7.51.tar.gz > /var/www/drupal-7.51.tar.gz && \
    cd /var/www && tar xf drupal-7.51.tar.gz

WORKDIR /var/www/drupal-7.51

RUN mkdir -p /var/www && \
    echo "<?php phpinfo(); ?>" > /var/www/index.php && \
    chmod 700 /var/www/index.php

RUN apk add fcgi php5-cgi php5-zlib php5-openssl
# BEGIN DRUPAL MINIMAL
RUN apk add php5-json php5-gd php5-xml php5-dom  
RUN apk add php5-memcache php5-pdo php5-pdo_sqlite php5-pdo_pgsql php5-pgsql
# END DRUPAL MINIMAL

RUN apk add php5-common php5-iconv php5-curl php5-imap
RUN apk add php5-soap php5-xmlrpc php5-posix php5-mcrypt php5-gettext php5-ldap php5-ctype

RUN apk add php5-pear php5-apcu php5-dev build-base
RUN sed -i "$ s|\-n||g" `which pecl` && \
    printf "\n" | pecl install apcpecl install apc
# BEGIN PHP.CONFIG
RUN (echo; echo 'user_ini.filename = ".user.ini"') >> /etc/php5/php.ini



ADD lighttpd/ /etc/lighttpd/
RUN lighttpd -t -f /etc/lighttpd/lighttpd.conf

RUN mkdir -p /run/lighttpd/