up:
	docker-compose up -d
build:
	docker-compose build --no-cache --force-rm
init:
	docker-compose build --no-cache
	docker-compose up -d
	yarn add @nestjs/cli
	nest new api
remake:
	@make destroy
	@make init
stop:
	docker-compose stop
down:
	docker-compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes --remove-orphans
ps:
	docker-compose ps
logs:
	docker-compose logs
logs-watch:
	docker-compose logs --follow
log-back:
	docker-compose logs backend
log-back-watch:
	docker-compose logs --follow backend
log-front:
	docker-compose logs frontend
log-front-watch:
	docker-compose logs --follow frontend
log-db:
	docker-compose logs db
log-db-watch:
	docker-compose logs --follow db
db:
	docker exec -it zenn_db sh