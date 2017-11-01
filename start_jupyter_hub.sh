#!/usr/bin/env bash

# Specify where files will be stored
STORAGE_PATH=$PWD/userfiles

# Choose the name to give the docker container
CONTAINER_NAME="jup-hub"

# Create the store directory if it doesn't exist yet
mkdir -p $STORAGE_PATH

# Start a docker container in the background
docker run -d --rm --name $CONTAINER_NAME -p 8000:8000 \
       -v $STORAGE_PATH:/home/ jupyter-server jupyterhub --no-ssl

# Check success
if [ $? -eq 0 ]; then
    echo "Server running on port 8000!"
else
    echo "Failed to start server!"
fi