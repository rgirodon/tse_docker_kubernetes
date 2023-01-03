#!/bin/sh

docker volume create mongodbdata

docker run -p 27017:27017 -v mongodbdata:/data/db --name mongodb -d mongo

docker run -it --rm --network host mongo mongosh