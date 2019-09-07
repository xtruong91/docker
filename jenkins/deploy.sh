# !/bin/bash 

echo "Step0: remove and recreate image"

docker-compose  down 

echo "Step 1: Build and run docker compose"

docker-compose docker-compose.yml up -d

docker-compose ps
