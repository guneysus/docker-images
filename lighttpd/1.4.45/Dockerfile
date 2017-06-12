FROM alpine:3.4

ADD sources/lighttpd-1.4.45.tar.gz /tmp
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
