ACCOUNT = ocramz
PROJECT = latex2html-docker
TAG = $(ACCOUNT)/$(PROJECT)

.DEFAULT_GOAL := help

help:
	@echo "Use \`make <target>\` where <target> is one of"
	@echo "  help     to display this help message"
	@echo "  build    to build the docker image"
	@echo "  rebuild  '', ignoring previous builds"
	@echo "  run0     run a bash shell in the image"

build:
	docker build -t $(TAG) .

rebuild:
	docker build --no-cache -t $(TAG) .

run0: build
	docker run --rm -it $(TAG) /bin/bash
