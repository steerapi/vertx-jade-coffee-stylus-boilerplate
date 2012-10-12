all: app.js
	cd web; make

%.js: %.coffee
	coffee -cb $<

watch:
	watch -n 1 make

run: all
	vertx run app.js

static:
	vertx run static_data.js

.PHONY: watch run static