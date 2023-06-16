#!/bin/bash

docker run \
    -u $(id -u ${USER}):$(id -g ${USER}) \
    -v $PWD:/app alexfedoseev/alpine-node-yarn-esy:0.0.4 \
    "cd /app && esy install && esy release-static;"
