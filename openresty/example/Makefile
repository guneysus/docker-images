default: build

build:
	@docker build -t guneysu/openresty-example .

push:
	@docker push guneysu/openresty-example

run:
	@docker run -it -p 8080:8080 guneysu/openresty-example 

.PHONY: default build push run