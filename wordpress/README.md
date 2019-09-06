Recreate the webserver, certbot service 

docker-compose up -d --force-recreate --no-deps webserver
docker-compose up --force-recreate --no-deps certbot
docker-compose up -d --force-recreate --no-deps wordpress


Check your services with docker-compose ps:
docker-compose ps


Stop service 
docker-compose stop webserver
docker-compose stop certbot
docker-compose stop wordpress


docker-compose exec webserver ls -la /etc/letsencrypt/live

docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

docker container prune

docker image prune -a
docker network prune

docker volume prune

Certificate 
command: certonly --webroot --webroot-path=/var/www/html --email sammy@example.com --agree-tos --no-eff-email --staging -d example.com -d www.example.com
command: certonly --webroot --webroot-path=/var/www/html --email sammy@example.com --agree-tos --no-eff-email --force-renewal -d example.com -d www.example.com


Change uploaded size of file 

Create uploads 

file_uploads = On
upload_max_filesize = 256M
post_max_size = 256M

link to : ./uploads.ini:/usr/local/etc/php/conf.d/uploads.ini