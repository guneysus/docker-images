IMAGE := guneysu/scrapy:experimental

default: build

build:
	@docker build -t $(IMAGE) .

test: build
	@docker run -it $(IMAGE) scrapy

push: build
	@docker push $(IMAGE)

.PHONY: default build test push