#!/usr/bin/env bash

HUGO_VERSION=0.104.3

serve:
	#cd youtube/themes/PaperMod && git fetch --all && git reset --hard origin/master && cd ../../..
	#cd youtube/linktree && git fetch --all && git reset --hard origin/main && cd ../..
	git submodule update --init --recursive

	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:${HUGO_VERSION} \
	server

build:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:${HUGO_VERSION} \
	--gc --minify

	cd youtube/public && git add . && git commit -m "Rebuilding site $(shell date)" && git push origin main && cd ../..

deploy:
	git config push.recurseSubmodules on-demand
	git add .
	git commit -m "HUGO src-prod as of $(shell date)"
	git push origin main

shell:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:${HUGO_VERSION} \
	shell