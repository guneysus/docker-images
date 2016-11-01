BASE := guneysu/monit
LATEST := $(BASE):latest
VERSIONS := 5.15 5.17 5.20

default: $(VERSIONS) build push

$(VERSIONS):
	@docker build -t $(BASE):$@ -f $@/Dockerfile $@
	@docker push $(BASE):$@

build:
	@docker build -t $(LATEST) .

push: build
	@docker push $(LATEST)

run:
	@docker run -it $(LATEST)

.PHONY: default build push run $(VERSIONS)