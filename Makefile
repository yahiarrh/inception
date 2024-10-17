DOCKER_COMPOSE = srcs/docker-compose.yml

up:
	docker-compose -f ${DOCKER_COMPOSE} up -d

down:
	docker-compose -f ${DOCKER_COMPOSE} down

restart: down up

prune:
	docker system prune -af
