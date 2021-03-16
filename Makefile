#!/usr/bin/env bash

serve:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.81.0 \
	server

build:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.81.0 \
	--gc --minify

shell:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.81.0 \
	shell