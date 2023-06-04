.PHONY: build
build:
	docker-compose -f ./docker-compose.yml build ffvae

.PHONY: up
up:
	docker-compose -f ./docker-compose.yml up -d ffvae

.PHONY: exec
exec:
	docker exec -it ffvae bash

.PHONY: down
down:
	docker-compose -f ./docker-compose.yml down

.PHONY: format
format:
	poetry run pysen run format

.PHONY: lint
lint:
	poetry run pysen run lint

.PHONY: setup
setup:
	poetry install
