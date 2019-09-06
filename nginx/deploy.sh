# !/bash/bin 

echo "Step 1: stop and remove the running container"

docker rm $(docker stop $(docker ps -a -q --filter ancestor="nginx-image" --format="{{.ID}}"))

echo "Step 2: create new image"
# step 1:  build image
docker build -t nginx-image .

echo "Step 3: Run container"
# steo 2: run image 

docker run --name webserver -d -p 80:80 nginx-image 

docker ps 
