#!/usr/bin/env bash

# Build the image. This will work from behind a proxy
# as long as the environment proxy variables as set 
# in the shell used to call this script.
docker build -t jupyter-server . \
       --build-arg http_proxy --build-arg https_proxy