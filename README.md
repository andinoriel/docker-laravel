# docker-laravel

This project provides you a working laravel environment without requiring you to install PHP, a web server, and any other server software on your local machine. For this, it requires Docker, Docker Compose and Task.

## Usage

1. Install [Docker](https://docs.docker.com/engine/installation/), [Docker-compose](https://docs.docker.com/compose/install/) and [Task](https://taskfile.dev/#/installation);

2. Clone this project and then cd to the project folder;

3. Run the initial build of the environment:
```
$ task init
```

4. Install all composer and npm dependencies:
```
$ task composer -- i
$ task npm -- i
```

5. Run the application using the command:
```
$ task up
```

6. Create your own .env file by copying .env.example:
```
$ cp src/.env.example src/.env
```

7. Generate the unique application key:
```
$ task artisan -- key:generate
```

8. You've done! Main page is available on http://localhost, phpMyAdmin - http://localhost:3309

9. After finishing work, you can stop running containers:
```
$ task down
```

## Other

If necessary, you can independently use composer, artisan or npm with the following commands:
```
$ task composer -- ...
$ task artisan -- ...
$ task npm -- ...
```

## License

This project is licensed under the [MIT License](LICENSE).

## Credits

My thanks to the developers of the [Docker](https://www.docker.com/company) and [Task](https://taskfile.dev/).
