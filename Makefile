.PHONY: up
DOCKER_COMPOSE:=`which docker-compose`

up:
	$(DOCKER_COMPOSE) up

build:
	$(DOCKER_COMPOSE) build

down:
	$(DOCKER_COMPOSE) down

api_test:
	curl localhost:8080/api/hello
