default: build

build:
	@docker build . -t guneysu/roller:2.7 -f Dockerfile
	@docker build onbuild -t guneysu/roller:2.7-onbuild

publish:
	@docker push guneysu/roller:2.7
	@docker push guneysu/roller:2.7-onbuild

.PHONY: default build base onbuild publish
