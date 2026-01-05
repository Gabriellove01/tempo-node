#!/bin/bash
# start.sh - starts the Tempo node in Docker

NODE_ID_FILE="$HOME/.tempo-node-id"
DOCKER_IMAGE="tempo-node:latest"
CONTAINER_NAME="tempo-node"

# Generate Node ID if it doesn't exist
if [ ! -f "$NODE_ID_FILE" ]; then
    echo "Generating Node ID..."
    uuidgen > "$NODE_ID_FILE"
    echo "Node ID created: $(cat $NODE_ID_FILE)"
fi

# Check if container is already running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Node container already running."
    exit 0
fi

# Remove any stopped container with the same name
if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; then
    echo "Removing old container..."
    docker rm $CONTAINER_NAME
fi

# Pull image if it doesn't exist
if [ -z "$(docker images -q $DOCKER_IMAGE)" ]; then
    echo "Pulling Docker image..."
    docker pull $DOCKER_IMAGE
fi

# Start container
echo "Starting Tempo node container..."
docker run -d \
    --name $CONTAINER_NAME \
    -v "$HOME/.tempo-node-id:/root/.tempo-node-id" \
    -p 30333:30333 \
    $DOCKER_IMAGE

echo "Node started. Container name: $CONTAINER_NAME"
