#!/bin/bash
# Start the node using setup.sh generated configs

NODE_DIR="$HOME/.tempo-node"
NODE_BIN="$NODE_DIR/tempo-node"

if [ ! -f "$NODE_BIN" ]; then
    echo "Node binary not found. Please run setup first."
    read -p "Press Enter to continue..."
    exit 1
fi

echo "Starting node..."
"$NODE_BIN" --base-path "$NODE_DIR" &
echo "Node started with PID $!"
read -p "Press Enter to continue..."
