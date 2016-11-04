BASE := guneysu/lighttpd
LATEST := $(BASE):latest
VERSIONS := 1.4.43
LAST_VERSION := 1.4.43
default: $(VERSIONS) build push

$(VERSIONS):
	@docker build -t $(BASE):$@ -f $@/Dockerfile .

build:
	@docker build -t $(LATEST) -f $(LAST_VERSION)/Dockerfile .

push: build
	@docker push $(LATEST)
	@docker push $(BASE):1.4.43

run:
	@docker run -it $(LATEST)

.PHONY: default build push run $(VERSIONS)
