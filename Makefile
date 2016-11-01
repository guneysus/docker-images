TARGETS := haproxy nginx python monit
default: $(TARGETS)

$(TARGETS):
	$(MAKE) -C $@

.PHONY: default $(TARGETS)