#!/bin/bash
mkdir -p $HOME/tempo-backups
BACKUP_FILE="$HOME/tempo-backups/tempo-backup-$(date +%s).tar.gz"
tar -czf "$BACKUP_FILE" -C "$HOME" .tempo
echo "✅ Backup completed: $BACKUP_FILE"
