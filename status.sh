#!/bin/bash
NODE_PID=$(pgrep -f "tempo-node")

if [ -n "$NODE_PID" ]; then
    echo "Node is RUNNING (PID: $NODE_PID)"
else
    echo "Node is NOT running"
fi
read -p "Press Enter to continue..."
