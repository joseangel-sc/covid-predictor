NAME := covid_predictori
TAG  := $(shell git log --pretty=format:'%h' -n 1)
IMG  := ${NAME}:${TAG}

build:
	docker build -t ${IMG} .

tests:
	docker run -it -v ${PWD}:/app ${IMG} python -m unittest

shell:
	docker run -it --entrypoint /bin/bash -v ${PWD}:/app ${IMG}