#!/bin/bash
if [ -z "$1" ]; then
  echo "❌ Usage: ./restore.sh <backup-file.tar.gz>"
  exit 1
fi
BACKUP_FILE="$1"
if [ ! -f "$BACKUP_FILE" ]; then
  echo "❌ Backup file not found"
  exit 1
fi
echo "⚠️ Restoring identity will overwrite existing identity!"
read -p "Type YES to continue: " CONFIRM
if [ "$CONFIRM" != "YES" ]; then
  echo "❌ Restore cancelled"
  exit 1
fi
rm -rf "$HOME/.tempo"
tar -xzf "$BACKUP_FILE" -C "$HOME"
echo "✅ Identity restored successfully"
