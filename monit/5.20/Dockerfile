FROM alpine:edge

RUN apk add "monit@edge==5.20.0-r0" -U --no-cache --virtual .build-dependencies && \
    apk del .build-dependencies

CMD ["monit", "-I", "c", "/etc/monitrc"]