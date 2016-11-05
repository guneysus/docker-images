LATEST := guneysu/drupal:7

default: build

build:
	@docker build -t $(LATEST) .

push:
	@docker push $(LATEST)

test: build
	@http http://localhost:8888/index.php 

run: build
	@docker-compose up

.PHONY: default build test run push 