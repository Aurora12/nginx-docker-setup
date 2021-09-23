#!/bin/bash

set -x

NAME=$(cat ./NAME)
FOLDER=$(pwd)

docker stop "$NAME"
docker rm "$NAME"

set -e

docker run --name "$NAME" \
--add-host=host.docker.internal:host-gateway \
-v $FOLDER/nginx.conf:/etc/nginx/nginx.conf:ro \
-v $FOLDER/log:/var/log/nginx:rw \
-v $FOLDER/cache:/var/cache/nginx:rw \
-d -p 80:80 nginx

lsof -i -nP +c 30|grep LISTEN
