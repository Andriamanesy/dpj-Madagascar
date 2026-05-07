HUGO ?= $(shell if [ -x .tools/hugo/hugo ]; then echo .tools/hugo/hugo; else echo hugo; fi)
PORT ?= 1313

.PHONY: build serve clean

build:
	$(HUGO) --gc --minify

serve:
	$(HUGO) server -D --bind 127.0.0.1 --port $(PORT) --baseURL http://127.0.0.1:$(PORT)/

clean:
	find public -mindepth 1 ! -name .gitkeep -exec rm -rf {} +
	rm -rf resources .hugo_build.lock
