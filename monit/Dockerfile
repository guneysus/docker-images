FROM alpine:edge

RUN apk add monit -U --no-cache --virtual .build-dependencies && \
    apk del .build-dependencies

CMD ["monit", "-I", "c", "/etc/monitrc"]