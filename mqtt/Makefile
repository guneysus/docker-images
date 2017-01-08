BASE := guneysu/mqtt
LATEST := $(BASE):latest

default: build

build:
	@docker build -t $(LATEST) .

push: build
	@docker push $(LATEST)

run: build
	@docker run -it -p 1883:1883 $(LATEST)

# ▶ mosquitto_sub -h mqtt.guneysu.xyz -p 8883 -v -t 'owntracks/#' -u owntracks -P p@ssword1
# ▶ mosquitto_pub -h mqtt.guneysu.xyz-p 8883 -u owntracks -P p@ssword1 -t 'owntracks/f' -m 'helloWorld'

up: build
	@docker-compose -p owntracker up -d

.PHONY: default build push run up