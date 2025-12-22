IMAGE_NAME=$(notdir $(CURDIR))-app

.PHONY: up down clean

up:
	docker compose -f compose.yml up -d --build

down:
	docker compose -f compose.yml down -v

clean: down
	docker rmi $(IMAGE_NAME) || true
