#!/bin/bash
NODE_DIR="$HOME/.tempo-node"
BACKUP_DIR="$HOME/tempo-node-backup"

mkdir -p "$BACKUP_DIR"

echo "Backing up identity and configs..."
cp -r "$NODE_DIR" "$BACKUP_DIR"
echo "Backup complete at $BACKUP_DIR"
read -p "Press Enter to continue..."
