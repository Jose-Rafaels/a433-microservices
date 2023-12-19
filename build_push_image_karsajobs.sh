#!/bin/bash

# membuat image dari dockerfile
sudo docker build -t karsajobs:latest .

# melihat docker images yang ada
sudo docker images

# deploy docker images ke docker hub
cat ../passworddocker.txt | docker login --username joserafaels --password-stdin
sudo docker tag karsajobs:latest joserafaels/karsajobs:latest
sudo docker push joserafaels/karsajobs:latest
