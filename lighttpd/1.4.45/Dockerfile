FROM alpine:3.10

RUN cd /tmp/ && wget http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.45.tar.gz && tar xf lighttpd-1.4.45.tar.gz
WORKDIR /tmp/lighttpd-1.4.45

RUN apk add -U --no-cache \
        build-base \
        pcre-dev \
        zlib-dev \
        bzip2-dev \
        pcre && \
      sh configure && \
        make -j4 && \
      make install && \
      apk del build-base *-dev && \
        rm /tmp/ -rf && \
        mkdir -p /var/www

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

RUN lighttpd -t -f /etc/lighttpd/lighttpd.conf

WORKDIR /
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
