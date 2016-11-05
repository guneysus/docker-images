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

RUN apk add fcgi  php5-cgi
# BEGIN DRUPAL MINIMAL
RUN apk add php5-json php5-gd php5-xml php5-dom  php5-pdo_sqlite
# END DRUPAL MINIMAL

# BEGIN DRUPAL REQUIRED EXTENSIONS
RUN apk add php5-zlib php5-openssl
# BEGIN DRUPAL REQUIRED EXTENSIONS

# BEGIN DRUPAL EXTRAS
RUN apk add php5-memcache
# END DRUPAL EXTRAS

# BEGIN PHP.CONFIG
RUN (echo; echo 'user_ini.filename = ".user.ini"') >> /etc/php5/php.ini

# BEGIN
# RUN apk add lighttpd php5-common php5-iconv php5-json php5-gd php5-curl php5-xml php5-pgsql php5-imap php5-cgi fcgi
# RUN apk add php5-pdo php5-pdo_pgsql php5-soap php5-xmlrpc php5-posix php5-mcrypt php5-gettext php5-ldap php5-ctype php5-dom
# END 

ADD lighttpd/ /etc/lighttpd/
RUN lighttpd -t -f /etc/lighttpd/lighttpd.conf

RUN mkdir -p /run/lighttpd/