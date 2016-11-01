IMAGE := guneysu/monit

default: build push

build:
	@docker build -t $(IMAGE) .

push: build
	@docker push $(IMAGE)

run:
	@docker run -it $(IMAGE)

.PHONY: default build push run

