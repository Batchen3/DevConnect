#!/bin/bash
version=$1
if [ "" =  "$version" ]; then
    echo "Error: Missing parameter, Run again with the version did you want."
    exit 1
fi
# docker volume create data-vol
docker build -t dev_connect_app:${version} .
# docker run -v data-vol:/DJANGO-WEBAPP/django_web_app -d -p 8000:8000 --name dev_connect_app_con dev_connect_app:${version}
# --memory=1g --memory-reservation=512m --cpus=1 --cpuset-cpus=2
docker run --mount type=bind,source="$(pwd)"/db.sqlite3,target=/usr/src/app/db.sqlite3 -d -p 8000:8000 --name dev_connect_app_con dev_connect_app:${version}
