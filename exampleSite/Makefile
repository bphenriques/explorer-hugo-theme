all: clean preview

.PHONY: clean
clean:
	rm -rf public

.PHONY: serve
preview:
	hugo server --minify --themesDir ../../ --disableFastRender --baseURL localhost:1313
