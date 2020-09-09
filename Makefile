setup:
	docker-compose build --no-cache --force-rm
	docker-compose up -d
	docker-compose exec php composer create-project --prefer-dist laravel/laravel .
	docker-compose exec webserver chmod -R 777 storage bootstrap/cache
	docker-compose exec php composer install
	docker-compose exec webserver cp .env.example .env
	docker-compose exec php php artisan key:generate
	docker-compose exec php php artisan storage:link
destroy:
	docker-compose down --rmi all --volumes
	rm -rf ./mysql && mkdir ./mysql
	rm -rf ./storage && mkdir ./storage
up:
	docker-compose up -d
stop:
	docker-compose stop
down:
	docker-compose down