#!/bin/bash

# Import environment variables
source .env

# If the JUPYTER_LOCALHOST_PORT is already in use, find the next open port to use in port mapping
# Note: This is necassary if you are running two instance of this template
#       in you local environment. Not the cleanest, but works.
while [[ ! -z $(lsof -i :$JUPYTER_LOCALHOST_PORT) ]]
do
    echo ">> IMPORTANT MESSAGE FROM ${0##*/}!"
    echo ">> Port $JUPYTER_LOCALHOST_PORT is already in use. Looking for the next available port."
    echo ">> You will access notebooks from a different port other than $JUPYTER_LOCALHOST_PORT"
    ((JUPYTER_LOCALHOST_PORT++))
done

echo ">> Host port set to: $JUPYTER_LOCALHOST_PORT, http://127.0.0.1:$JUPYTER_LOCALHOST_PORT"

# Start a running container using the image built by `build.bash`
docker run \
    -it --rm -p $JUPYTER_LOCALHOST_PORT:$JUPYTER_CONTAINER_PORT \
    -v $(pwd):/home/app \
    -v $(pwd)/notebooks:/home/jovyan \
    --env-file .env \
    $@ \
    --name $PACKAGE_NAME-container $PACKAGE_NAME
