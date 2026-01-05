#!/bin/bash
# stop.sh - stops the Tempo node container

CONTAINER_NAME="tempo-node"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    docker stop $CONTAINER_NAME
    echo "Node stopped."
else
    echo "No running node container found."
fi
