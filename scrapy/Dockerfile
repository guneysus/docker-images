FROM alpine:3.10

RUN apk add --update \
        openssl \
        ca-certificates \
        python \
        libxslt \
        libxml2 \
        py-pip \
        build-base \
        libxslt-dev \
        libxml2-dev \
        libffi-dev \
        python-dev \
        openssl-dev \
        --virtual .build-dependencies &&\
    pip install --no-cache-dir scrapy==1.2.1 && \
    apk del .build-dependencies &&\
    apk del --purge *-dev build-base && \
    rm -rf /tmp/* /var/cache/apk/* /root/.cache/*