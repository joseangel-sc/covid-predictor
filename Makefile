NAME := covid_predictor

build:
	docker build .

tests:
	docker run
	