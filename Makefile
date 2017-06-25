.PHONY: up db
DOCKER_COMPOSE:=`which docker-compose`

docker/%:
	$(DOCKER_COMPOSE) $*

ssh:
	docker exec -it positivery_api_1 /bin/bash

db:
	docker exec -it positivery_db_1 mysql -uroot -psecret

api_test:
	curl localhost:8080/api/hello
