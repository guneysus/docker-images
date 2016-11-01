TARGETS := haproxy nginx python

default: $(TARGETS)

$(TARGETS):
	$(MAKE) -C $@

.PHONY: default $(TARGETS)