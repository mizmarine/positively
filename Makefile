.PHONY: up db
DOCKER_COMPOSE:=`which docker-compose`

up:
	$(DOCKER_COMPOSE) up

build:
	$(DOCKER_COMPOSE) build

down:
	$(DOCKER_COMPOSE) down

stop:
	$(DOCKER_COMPOSE) stop

restart:
	$(DOCKER_COMPOSE) restart

ssh:
	docker exec -it positivery_api_1 /bin/bash

db:
	docker exec -it positivery_db_1 mysql -uroot -psecret

api_test:
	curl localhost:8080/api/hello
