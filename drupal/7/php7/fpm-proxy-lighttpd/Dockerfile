FROM guneysu/lighttpd:1.4.43

ADD configs/lighttpd.conf /etc/lighttpd/
ADD configs/01-mod_fastcgi.conf /etc/lighttpd/
ADD configs/02-drupal.conf /etc/lighttpd/

RUN apk add libbz2 -U
RUN mkdir -p /var/www/html && \
    echo "<?php phpinfo(); ?>" > /var/www/html/index.php && \
    chmod 755 /var/www/html/index.php