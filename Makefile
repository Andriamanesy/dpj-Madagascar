HUGO ?= $(shell if [ -x .tools/hugo/hugo ]; then echo .tools/hugo/hugo; else echo hugo; fi)
PORT ?= 1313

.PHONY: build serve clean

build:
	$(HUGO) --gc --minify

serve:
	$(HUGO) server -D --bind 127.0.0.1 --port $(PORT) --baseURL http://127.0.0.1:$(PORT)/

clean:
	rm -rf public resources/_gen .hugo_build.lock
