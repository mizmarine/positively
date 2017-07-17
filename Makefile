.PHONY: db
DOCKER:=`which docker`
DOCKER_COMPOSE:=`which docker-compose`
DOCKER_COMPOSE_FILE:='-f docker-compose.yml'

docker/%:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) $*

ssh:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) exec api /bin/bash

db:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) exec db mysql -uroot -psecret

api_test:
	curl localhost:8080/api/hello

init:
	$(DOCKER) network create -d bridge positivery