#!/bin/bash

# Read in .env and set environment variables for use in build.bash
if [ ! -f .env ]; then
    echo "Please create a .env file from the .env.template or from the contents of the readme" && exit 1
else
    set -o allexport; source .env; set +o allexport
fi

docker build \
    -t $PACKAGE_NAME \
    --build-arg PACKAGE_NAME=$PACKAGE_NAME .
