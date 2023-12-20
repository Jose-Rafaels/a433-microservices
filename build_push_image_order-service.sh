!/bin/bash

# membuat image dari dockerfile
docker build -t order-service:latest .

# melihat docker images yang ada
docker images

# deploy docker images ke docker hub
cat ../passworddocker.txt | docker login --username joserafaels --password-stdin
docker tag order-service:latest joserafaels/order-service:latest
docker push joserafaels/order-service:latest
