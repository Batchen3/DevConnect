#!/bin/bash
version=$1
if [ "" =  "$version" ]; then
    echo "Error: Missing parameter, Run again with the version did you want."
    exit 1
fi

docker stop dev_connect_app_con
docker rm dev_connect_app_con
docker rmi dev_connect_app:${version}