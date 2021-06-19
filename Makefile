%:
	@:
args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`


init: down pull build
restart: down up

up:
	docker-compose up -d nginx phpmyadmin

stop:
	docker-compose stop

down:
	docker-compose down -v --remove-orphans

pull:
	docker-compose pull

build:
	docker-compose build


composer:
	docker-compose run --rm composer $(call args,"")

artisan:
	docker-compose run --rm artisan $(call args,"")

npm:
	docker-compose run --rm npm $(call args,"")
