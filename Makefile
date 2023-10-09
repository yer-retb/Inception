COMPOSE = ./srcs/docker-compose.yml

build:
	@mkdir -p /home/yer-retb/data/mariadb
	@mkdir -p /home/yer-retb/data/wordpress
	@docker compose -f ${COMPOSE} build

up:
	@docker compose -f ${COMPOSE} up -d 

down:
	@docker compose -f ${COMPOSE} down

clean:
	docker system prune -af
	sudo rm -rf /home/yer-retb/data/mariadb
	sudo rm -rf /home/yer-retb/data/wordpress
