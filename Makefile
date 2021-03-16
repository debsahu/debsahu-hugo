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

	cd youtube/public
	git add .
	git commit -m "Rebuilding site $(shell date)"
	git push origin main
	cd ../..

deploy:
	git add .
	git commit -m "HUGO Source as of $(shell date)"
	git push origin main

shell:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.81.0 \
	shell