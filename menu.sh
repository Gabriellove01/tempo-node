#!/bin/bash

TEMPO_DIR="$HOME/.tempo"

clear_screen() {
  clear
  echo "===================================="
  echo "        TEMPO NODE MANAGER"
  echo "===================================="
  echo "Node directory: $TEMPO_DIR"
  echo ""
}

pause() {
  read -p "Press Enter to continue..."
}

# Ensure Tempo is installed
require_tempo() {
  if [ ! -d "$TEMPO_DIR" ]; then
    echo "❌ Tempo not installed."
    echo "Run setup first:"
    echo "   sudo bash setup.sh"
    exit 1
  fi
}

while true; do
  clear_screen
  echo "1) Install Node / Setup"
  echo "2) Start Node"
  echo "3) Stop Node"
  echo "4) Show Node ID"
  echo "5) Backup Identity"
  echo "6) Restore Identity"
  echo "7) Validator / Wallet Setup"
  echo "8) Update Node"
  echo "9) Check Status"
  echo "10) View Logs"
  echo "11) Test RPC"
  echo "0) Exit"
  echo "------------------------------------"
  read -p "Select an option: " choice

  case $choice in
    1)
      sudo bash setup.sh
      pause
      ;;
    2)
      require_tempo
      "$TEMPO_DIR/start.sh"
      pause
      ;;
    3)
      require_tempo
      "$TEMPO_DIR/stop.sh"
      pause
      ;;
    4)
      require_tempo
      if [ -f "$TEMPO_DIR/config/signing-key.txt" ]; then
        echo "Node identity file exists:"
        echo "  $TEMPO_DIR/config/signing-key.txt"
      else
        echo "❌ Node identity not found"
      fi
      pause
      ;;
    5)
      require_tempo
      mkdir -p "$HOME/tempo-backup"
      cp -r "$TEMPO_DIR/config" "$HOME/tempo-backup/"
      echo "✅ Identity backed up to:"
      echo "   $HOME/tempo-backup/"
      pause
      ;;
    6)
      require_tempo
      read -p "Enter backup path: " BACKUP
      if [ -d "$BACKUP/config" ]; then
        cp -r "$BACKUP/config" "$TEMPO_DIR/"
        echo "✅ Identity restored"
      else
        echo "❌ Invalid backup path"
      fi
      pause
      ;;
    7)
      require_tempo
      nano "$TEMPO_DIR/.env"
      pause
      ;;
    8)
      require_tempo
      "$TEMPO_DIR/update.sh"
      pause
      ;;
    9)
      require_tempo
      "$TEMPO_DIR/status.sh"
      pause
      ;;
    10)
      require_tempo
      "$TEMPO_DIR/logs.sh"
      ;;
    11)
      require_tempo
      "$TEMPO_DIR/test-rpc.sh"
      pause
      ;;
    0)
      echo "Goodbye 👋"
      exit 0
      ;;
    *)
      echo "Invalid option"
      sleep 1
      ;;
  esac
done
