#!/bin/bash
CONFIG_DIR="$HOME/.tempo/config"
WALLET_FILE="$CONFIG_DIR/wallet.env"
mkdir -p "$CONFIG_DIR"
if [ -f "$WALLET_FILE" ]; then
  echo "✅ Wallet already configured"
  exit 0
fi
echo "🔐 Validator / Wallet setup"
read -p "Enter WALLET ADDRESS: " WALLET_ADDRESS
read -s -p "Enter PRIVATE KEY (hidden): " PRIVATE_KEY
echo ""
cat <<EOF > "$WALLET_FILE"
WALLET_ADDRESS=$WALLET_ADDRESS
PRIVATE_KEY=$PRIVATE_KEY
EOF
chmod 600 "$WALLET_FILE"
echo "✅ Wallet stored securely"
