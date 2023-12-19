#!/bin/bash

# membuat image dari dockerfile
sudo docker build -t karsajobs-ui:latest .

# melihat docker images yang ada
sudo docker images

# deploy images ke docker hub
cat dockerpass.txt | docker login --username joserafaels --password-stdin
sudo docker tag karsajobs-ui:latest joserafaels/karsajobs-ui:latest
sudo docker push joserafaels/karsajobs-ui:latest
