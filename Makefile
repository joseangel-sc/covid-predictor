NAME := covid_predictor

build:
	docker build . -t ${NAME}

run:
	docker run ${NAME}

shell:
	docker run -it --entrypoint /bin/bash ${NAME}

tests:
	docker run ${NAME} python -m unittest
	