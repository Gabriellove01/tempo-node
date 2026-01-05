#!/bin/bash
BACKUP_DIR="$HOME/tempo-node-backup"
NODE_DIR="$HOME/.tempo-node"

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Backup not found. Please backup first."
    read -p "Press Enter to continue..."
    exit 1
fi

echo "Restoring node data from backup..."
cp -r "$BACKUP_DIR"/* "$NODE_DIR"/
echo "Restore complete."
read -p "Press Enter to continue..."
