#!/bin/bash

# Import environment variables
source .env

# Build the image
bin/build.bash

# Start the container in detched mode
bin/run.bash -d

# Check if the container started
if [[ $(docker ps | grep "$PACKAGE_NAME-container" | wc -l) -ne 1 ]]; then
    echo "FATAL: The $PACKAGE_NAME container is not running"
    docker ps
    exit 1
fi

# Run tests
bin/exec.bash -c "pytest"

# Stop the container
bin/stop.bash | grep "$PACKAGE_NAME-container"
