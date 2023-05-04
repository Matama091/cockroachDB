DOCKER=docker
COMPOSE=$(DOCKER) compose
EXEC=$(COMPOSE) exec
EXECD=$(COMPOSE) exec -d
BUILD=$(COMPOSE) build
UP=$(COMPOSE) up -d
LOGS=$(COMPOSE) logs
STOP=$(COMPOSE) stop
RM=$(COMPOSE) rm
DOWN=$(COMPOSE) down
NODE=$(EXEC) cockroach1
NODE2=$(EXEC) cockroach2
NODE3=$(EXEC) cockroach3

docker/build: ## docker build
	$(BUILD)

docker/up: ## docker up
	$(UP)

docker/logs: ## docker logs
	$(LOGS)

docker/stop: ## docker stop
	$(STOP)

docker/rm: ## docker clean
	$(RM)

docker/down: ## docker down
	$(DOWN) -v

docker/volume/prune: ### docker volume prune
	docker volume prune

node/bash: ## node container bash
	$(NODE) bash

node2/bash: ## node2 container bash
	$(NODE2) bash

node3/bash: ## node3 container bash
	$(NODE3) bash