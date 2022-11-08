# Build own docker-compose
Using sample docker-compose file, reuse it to run JPA application.
To build this APP you need to 
- run mariadb or mysql container from this image https://hub.docker.com/_/mariadb
- run JPA container:
  - use build command in docker-compose to build it from the Dockerfile in this folder https://docs.docker.com/compose/compose-file/build/
  - use environment variables to connect to the database:
    - MYSQL_HOST
    - MYSQL_DB
    - USER
    - PASS

after everything would work jusr run `docker compose up -d`
and run
```
curl -H 'Content-Type: application/json' -X POST -d '{"name":"Maciej
Krajewski","country":"Poland"}' http://127.0.0.1:8080/api/users
```

this command should run put some information to the app if everything would work just run 
```
curl http://127.0.0.1:8080/api/users
```
