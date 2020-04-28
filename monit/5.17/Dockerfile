FROM alpine:3.10

RUN apk add "monit@edge==5.17.1-r0" -U --no-cache --virtual .build-dependencies && \
    apk del .build-dependencies

CMD ["monit", "-I", "c", "/etc/monitrc"]