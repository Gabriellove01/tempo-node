#!/bin/bash
LOG_FILE="$HOME/.tempo-node/tempo.log"

if [ -f "$LOG_FILE" ]; then
    echo "===== Last 50 lines of Node Logs ====="
    tail -n 50 "$LOG_FILE"
else
    echo "Log file not found."
fi
read -p "Press Enter to continue..."
