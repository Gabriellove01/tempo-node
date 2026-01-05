#!/bin/bash

RPC_URL="http://127.0.0.1:9933"

echo "🔌 Testing RPC at $RPC_URL..."

response=$(curl -s --max-time 5 \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"system_health","params":[],"id":1}' \
  $RPC_URL)

if echo "$response" | grep -q "result"; then
  echo "✅ RPC is responding"
  echo "$response"
else
  echo "❌ RPC not responding"
fi

read -p "Press Enter to return to menu..."
