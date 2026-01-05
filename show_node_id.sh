#!/bin/bash
NODE_ID_FILE="$HOME/.tempo-node-id"

if [ -f "$NODE_ID_FILE" ]; then
    echo "Node ID:"
    cat "$NODE_ID_FILE"
else
    echo "Node ID not found. Run setup first."
fi
read -p "Press Enter to continue..."
