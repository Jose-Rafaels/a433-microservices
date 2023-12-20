!/bin/bash

# membuat image dari dockerfile
docker build -t shipping-service:latest .

# melihat docker images yang ada
docker images

# deploy docker images ke docker hub
cat ../passworddocker.txt | docker login --username joserafaels --password-stdin
docker tag shipping-service:latest joserafaels/shipping-service:latest
docker push joserafaels/shipping-service:latest
