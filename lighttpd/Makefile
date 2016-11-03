IMAGE := guneysu/lighttpd

default: build

build: 
	@docker build -t $(IMAGE) .

sh:
	@docker run -it $(IMAGE) sh -li

push:
	@docker push $(IMAGE)

test:
	@docker run -it $(IMAGE)

.PHONY: default build test sh push 