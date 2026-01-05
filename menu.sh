#!/bin/bash

while true; do
    clear
    echo "===================================="
    echo "        TEMPO NODE MANAGER"
    echo "===================================="
    echo "1) Install Node"
    echo "2) Start Node"
    echo "3) Show Node ID"
    echo "4) Backup Identity"
    echo "5) Restore Identity"
    echo "6) Validator/Wallet Setup"
    echo "7) Update Node"
    echo "8) Check Status"
    echo "9) View Logs"
    echo "10) Test RPC"
    echo "0) Exit"
    echo "------------------------------------"
    read -p "Select an option: " choice

    case $choice in
        1)
            ./install.sh
            ;;
        2)
            ./start.sh
            ;;
        3)
            if [ -f "$HOME/.tempo-node-id" ]; then
                echo "Node ID:"
                cat "$HOME/.tempo-node-id"
            else
                echo "Node ID not found"
            fi
            read -p "Press Enter to continue..."
            ;;
        4)
            ./backup.sh
            ;;
        5)
            ./restore.sh
            ;;
        6)
            ./validator-setup.sh
            ;;
        7)
            ./update.sh
            ;;
        8)
            ./status.sh
            ;;
        9)
            ./logs.sh
            ;;
        10)
            ./rpc-test.sh
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option"
            sleep 1
            ;;
    esac
done
