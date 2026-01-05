#!/bin/bash
while true; do
  echo "====== Tempo Node Manager ======"
  echo "1) Install Node"
  echo "2) Start Node"
  echo "3) Stop Node"
  echo "4) Show Node ID"
  echo "5) Backup Identity"
  echo "6) Restore Identity"
  echo "7) Validator / Wallet Setup"
  echo "8) Update Node"
  echo "0) Exit"
  read -p "Select option: " OPTION

  case $OPTION in
    1) ./install.sh ;;
    2) ./start.sh ;;
    3) ./stop.sh ;;
    4) ./show_node_id.sh ;;
    5) ./backup.sh ;;
    6) read -p "Enter backup file path: " FILE; ./restore.sh "$FILE" ;;
    7) ./validator_setup.sh ;;
    8) ./update.sh ;;
    0) exit 0 ;;
    *) echo "Invalid option" ;;
  esac
done
