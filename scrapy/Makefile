LATEST := guneysu/scrapy:edge

default: build

build:
	@docker build -t $(LATEST) .

push:
	@docker push $(LATEST)

.PHONY: default build push