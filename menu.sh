#!/bin/bash

while true; do
    clear
    echo "===================================="
    echo "        TEMPO NODE MANAGER"
    echo "===================================="
    echo "1) Install Node"
    echo "2) Start Node"
    echo "3) Stop Node"
    echo "4) Update Node"
    echo "5) Setup Validator"
    echo "6) Show Node ID"
    echo "7) Check Status"
    echo "8) View Logs"
    echo "9) Test RPC"
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
            ./stop.sh
            ;;
        4)
            ./update.sh
            ;;
        5)
            ./validator-setup.sh
            ;;
        6)
            if [ -f "$HOME/.tempo-node-id" ]; then
                echo "Node ID:"
                cat "$HOME/.tempo-node-id"
            else
                echo "Node ID not found"
            fi
            read -p "Press Enter to continue..."
            ;;
        7)
            ./status.sh
            ;;
        8)
            ./logs.sh
            ;;
        9)
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

