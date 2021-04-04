# docker-backend-laravel

This project provides you a working laravel environment without requiring you to install PHP, a web server, and any other server software on your local machine. For this, it requires Docker and Docker Compose.

## Usage

1. Install [docker](https://docs.docker.com/engine/installation/) and [docker-compose](https://docs.docker.com/compose/install/);
2. Clone this project and then cd to the project folder;
3. Run the initial build of the environment:
```
$ docker-compose build
```
4. Install all composer and npm dependencies:
```
$ docker-compose run --rm composer i
$ docker-compose run --rm npm i
```
5. Run the application using the command:
```
$ docker-compose up -d --build nginx phpmyadmin
```
6. Create your own .env file by copying .env.example:
```
$ cp src/.env.example src/.env
```
7. Generate the unique application key:
```
$ docker-compose run --rm artisan key:generate
```
8.  You've done! Main page is available on http://localhost, phpMyAdmin - http://localhost:3309 (root/root)

## Other

If necessary, you can independently use composer, artisan or npm with the following commands:
```
$ docker-compose run --rm composer ...
$ docker-compose run --rm artisan ...
$ docker-compose run --rm npm ...
```

## License

This project is licensed under the [MIT License](LICENSE).

## Credits

My thanks to the developers of the [Docker](https://www.docker.com/company).
