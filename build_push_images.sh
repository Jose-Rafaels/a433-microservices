#!/bin/bash

# membuat docker container dari dockerfile dengan versi 1
docker build -t item-app:v1 .

# mengecek docker images yang ada
docker images

# push docker images ke docker hub
cat ../passworddocker.txt | docker login --username joserafaels --password-stdin
docker tag item-app:v1 joserafaels/item-app:v1
docker push joserafaels/item-app:v1
