# !/bin/bash 

echo "Step0: remove and recreate image"

docker-compose  down 

echo "Step 1: Build and run docker compose"

docker-compose -f docker-compose.yml up --build -d

docker-compose ps
