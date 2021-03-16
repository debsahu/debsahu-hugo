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
	msg="rebuilding site $(date)"
	git commit -m "$msg"
	git push origin main
	cd ../..

deploy:
	git add .
	msg="HUGO Source as of $(date)"
	git commit -m "$msg"
	git push origin main

shell:
	docker run --rm -it \
	-v ${PWD}/youtube:/src \
	-p 1313:1313 \
	klakegg/hugo:0.81.0 \
	shell