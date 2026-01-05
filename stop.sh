#!/bin/bash
# Stop the running node

NODE_PID=$(pgrep -f "tempo-node")

if [ -n "$NODE_PID" ]; then
    echo "Stopping node (PID: $NODE_PID)..."
    kill "$NODE_PID"
    echo "Node stopped."
else
    echo "Node is not running."
fi
read -p "Press Enter to continue..."
