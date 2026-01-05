#!/bin/bash
# Update node files while keeping configs
NODE_DIR="$HOME/.tempo-node"

if [ ! -d "$NODE_DIR" ]; then
    echo "Node not installed. Run setup first."
    read -p "Press Enter to continue..."
    exit 1
fi

echo "Updating node..."
cd "$NODE_DIR" || exit
git pull
echo "Node updated."
read -p "Press Enter to continue..."
