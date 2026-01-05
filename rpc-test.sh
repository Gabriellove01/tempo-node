#!/bin/bash
RPC_URL="http://127.0.0.1:9933"

echo "Testing RPC connection to $RPC_URL..."
if curl -s "$RPC_URL" >/dev/null; then
    echo "RPC is responding!"
else
    echo "RPC test failed. Node might not be running."
fi
read -p "Press Enter to continue..."
