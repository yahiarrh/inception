DOCKER_COMPOSE = srcs/docker-compose.yml

up:
	docker-compose -f ${DOCKER_COMPOSE} up -d

down:
	docker-compose -f ${DOCKER_COMPOSE} down

restart: down up

prune:
	docker system prune -af

fclean: down prune
	@docker volume rm mariadb wordpress
	@sudo rm -rf /home/yrrhaibi/data/mariadb/*
	@sudo rm -rf /home/yrrhaibi/data/wordpress/*
