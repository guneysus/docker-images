FROM alpine:3.4
RUN apk add -U --no-cache mosquitto

RUN touch /etc/mosquitto/pwfile && \
    mosquitto_passwd -b /etc/mosquitto/pwfile owntracks p@ssword1 && \
    mkdir /var/lib/mosquitto/ && \
    chown mosquitto:mosquitto /var/lib/mosquitto/ -R
    
COPY mosquitto.conf /etc/mosquitto/
CMD mosquitto -v -c /etc/mosquitto/mosquitto.conf
