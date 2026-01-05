#!/bin/bash
# Prepare wallet/validator config
WALLET_FILE="$HOME/.tempo-node/wallet.txt"

read -p "Enter validator private key: " PRIV_KEY
read -p "Enter wallet address: " WALLET_ADDR

mkdir -p "$HOME/.tempo-node"
echo "PRIVATE_KEY=$PRIV_KEY" > "$WALLET_FILE"
echo "WALLET_ADDRESS=$WALLET_ADDR" >> "$WALLET_FILE"

echo "Validator / Wallet setup complete."
read -p "Press Enter to continue..."
