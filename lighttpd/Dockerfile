FROM alpine:3.4

ADD sources/lighttpd-1.4.43.tar.gz /tmp
WORKDIR /tmp/lighttpd-1.4.43

RUN apk update 
RUN apk add --virtual .build-dependencies \
      build-base \
      pcre-dev \
      zlib-dev \
      bzip2-dev

RUN sh configure && make -j4 && make install
ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

RUN lighttpd -t -f /etc/lighttpd/lighttpd.conf

RUN rm /tmp/* -rf && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apk del build-base *-dev

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
