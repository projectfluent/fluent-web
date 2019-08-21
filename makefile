PACKAGE := @fluent/web
GLOBAL  := FluentWeb

include ./common.mk

build: fluent-web.js

fluent-web.js: $(SOURCES)
	@./node_modules/.bin/rollup $(CURDIR)/src/index.js \
		--config $(CURDIR)/rollup_config.js \
		--banner "/* $(PACKAGE)@$(VERSION) */" \
		--name $(GLOBAL) \
		--output.file $@
	@echo -e " $(OK) $@ built"

clean:
	@rm -f fluent-web.js
	@echo -e " $(OK) clean"
