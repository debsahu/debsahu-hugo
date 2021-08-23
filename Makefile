#!/usr/bin/env bash

serve:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.87.0 \
	server

build:
	cd youtube/themes/PaperMod && git fetch --all && git reset --hard origin/master && cd ../../..

	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.87.0 \
	--gc --minify

	cd youtube/public && git add . && git commit -m "Rebuilding site $(shell date)" && git push origin main && cd ../..

deploy:
	git config push.recurseSubmodules on-demand
	git add .
	git commit -m "HUGO src-prod as of $(shell date)"
	git push --recurse-submodules=on-demand
	git push origin main

shell:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.87.0 \
	shell