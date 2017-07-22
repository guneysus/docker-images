default: build

build:
	@docker build . -t guneysu/roller:3.5 -f Dockerfile
	@docker build onbuild -t guneysu/roller:3.5-onbuild

publish:
	@docker push guneysu/roller:3.5
	@docker push guneysu/roller:3.5-onbuild

.PHONY: default build base onbuild publish
