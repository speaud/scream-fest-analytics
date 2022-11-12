#!/bin/bash

# Import environment variables
source .env

# Open an interactive session in the running container
docker exec \
    -it \
    -w /home/app $PACKAGE_NAME-container \
    bash $@
