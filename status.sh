#!/bin/bash
# status.sh - checks node container status

CONTAINER_NAME="tempo-node"

if ! docker info >/dev/null 2>&1; then
    echo "Cannot access Docker. Make sure your user is in the docker group."
    exit 1
fi

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Node is RUNNING (container: $CONTAINER_NAME)"
else
    echo "Node is NOT running"
fi
