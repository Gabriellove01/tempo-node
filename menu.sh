#!/bin/bash

while true; do
  clear
  echo "====== Tempo Node Manager ======"
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
  read -p "Select option: " OPTION

  case $OPTION in
    1) ./setup.sh ;;
    2) ./start.sh ;;
    3) ./stop.sh ;;
    4) ./show_node_id.sh ;;
    5) ./backup.sh ;;
    6) ./restore.sh ;;
    7) ./validator_setup.sh ;;
    8) ./update.sh ;;
    9) ./status.sh ;;
    10) ./logs.sh ;;
    11) ./rpc-test.sh ;;
    0) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done
