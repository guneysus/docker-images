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

shell:
	@docker run -it $(LATEST) sh -li	

.PHONY: default build push run shell $(VERSIONS)
