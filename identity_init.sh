#!/bin/bash
IDENTITY_DIR="$HOME/.tempo/identity"
KEY_FILE="$IDENTITY_DIR/node_key.json"
NODE_ID_FILE="$IDENTITY_DIR/node_id.txt"
mkdir -p "$IDENTITY_DIR"
if [ -f "$KEY_FILE" ]; then
  echo "✅ Identity already initialized. Skipping."
  exit 0
fi
echo "🔐 Initializing node identity (ONE TIME)..."
openssl rand -hex 32 > "$KEY_FILE"
sha256sum "$KEY_FILE" | awk '{print $1}' > "$NODE_ID_FILE"
chmod 600 "$KEY_FILE"
echo "✅ Identity created and LOCKED"
echo "🆔 Node ID: $(cat $NODE_ID_FILE)"
