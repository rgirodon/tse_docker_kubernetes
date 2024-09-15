#!/bin/sh

docker volume create mongodbdata

docker run -p 27017:27017 -v mongodbdata:/data/db --name mongodb_server -d mongodb/mongodb-community-server

docker run -it --rm --network host mongodb/mongodb-community-server mongosh

# once connected, insert a document in this db 
# db.users.insertOne({"name" : "Rémy"});

# stop and delete container mongodb_server
# re-create a container using same volume mounted on /data/db
# see created document is here !


docker volume create filedata

docker run -v filedata:/tmp --name alpine_shell -it alpine sh

# once connected, create a file in this volume 
# touch /tmp/file.txt

# stop and delete container alpine_shell
# re-create a container using same volume mounted on /tmp
# see created file is here !