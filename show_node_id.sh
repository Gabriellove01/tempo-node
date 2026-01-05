#!/bin/bash
NODE_ID_FILE="$HOME/.tempo/identity/node_id.txt"
if [ -f "$NODE_ID_FILE" ]; then
  echo "🆔 Your Node ID:"
  cat "$NODE_ID_FILE"
else
  echo "❌ Node ID not found. Run identity initialization first."
fi
