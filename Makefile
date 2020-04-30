NAME := covid_predictori
TAG  := $(shell )
IMG  := ${NAME}

build:
	docker build .

tests:
	docker run

shell:
	docker run -it --entrypoint /bin/bash ${IMG}