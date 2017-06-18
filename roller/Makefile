default: run

build:
	$(MAKE) -C 3.5

run: build
	@docker-compose up --build

publish: build
	@docker push guneysu/roller:3.5	
	@docker push guneysu/roller:3.5-onbuild

.PHONY: default build run publish