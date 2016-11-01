FROM guneysu/python:2.7.12
# RUN pip install --no-cache-dir scrapy==1.2.1
RUN apk add --update \
        openssl \
        ca-certificates \
        libxslt \
        libxml2 \
        build-base \
        libxslt-dev \
        libxml2-dev \
        libffi-dev \
        python-dev \
        openssl-dev && \

    pip install \
        scrapy \
    apk del --purge *-dev build-base && \
    rm -rf /tmp/* /var/cache/apk/* /root/.cache/*