Recreate the webserver, certbot service 

docker-compose up -d --force-recreate --no-deps webserver
docker-compose up --force-recreate --no-deps certbot


Check your services with docker-compose ps:
docker-compose ps


Stop service 
docker-compose stop webserver
docker-compose stop certbot
docker-compose stop wordpress


docker-compose exec webserver ls -la /etc/letsencrypt/live

docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

docker network prune
docker image prune -a
docker volume prune