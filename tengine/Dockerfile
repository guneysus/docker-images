FROM alpine:3.10

RUN apk add build-base pcre-dev openssl-dev zlib-dev pcre && \
cd /tmp && \
    wget http://tengine.taobao.org/download/tengine-2.3.2.tar.gz && \
    tar xf tengine-2.3.2.tar.gz && \
    cd /tmp/tengine-2.3.2 && ./configure && make -j4 && make install && \
    apk del build-base *-dev && rm /tmp/ -rf
    
CMD /usr/local/nginx/sbin/nginx "-g daemon off; error_log /dev/stderr info;"