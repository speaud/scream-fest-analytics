#!/bin/bash

# Import environment variables
source .env

# Stop the running container
docker stop $PACKAGE_NAME-container
