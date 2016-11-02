FROM alpine:3.4
MAINTAINER Wodby <hello@wodby.com>

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
        openssl-dev && \

    pip install \
        scrapy \
        simplejson \
        service_identity \
        beautifulsoup && \

    apk del --purge *-dev build-base && \
    rm -rf /tmp/* /var/cache/apk/* /root/.cache/*