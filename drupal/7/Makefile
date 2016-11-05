LATEST := guneysu/drupal:7

default: build

build:
	@docker build -t $(LATEST) .

push:
	@docker push $(LATEST)

test: build
	@http http://localhost:8888/index.php 

run: build
	@docker run -it -v /tmp/drupal-7.51 -p 8888:80  $(LATEST)

.PHONY: default build test run push 