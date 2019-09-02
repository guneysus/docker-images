FROM alpine:edge
RUN apk add bash
RUN apk add imagemagick
RUN apk --no-cache add msttcorefonts-installer fontconfig && \
 update-ms-fonts && \
 fc-cache -f