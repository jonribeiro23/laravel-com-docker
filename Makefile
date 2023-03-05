build:
	mkdir laradocker
	composer create-project laravel/laravel laradocker
	chmod 777 -R laradocker/bootstrap laradocker/storage laradocker/resources
	docker compose build --no-cache --force-rm
up:
	docker compose up
down:
	docker compose down
update:
	docker exec laradocker bash -c "composer update"
rebuild:
	docker compose build --no-cache --force-rm