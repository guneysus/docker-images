FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -yqq update && \
    apt-get -yqq install --no-install-recommends \
    python3 \
    python3-pip \
    uwsgi uwsgi-plugin-python3

ONBUILD ADD requirements.txt /tmp/

ONBUILD RUN mkdir -p /app/ && \
            cd /app && \
            pip install wheel && \
            pip install -r /tmp/requirements.txt
            
ONBUILD WORKDIR /app