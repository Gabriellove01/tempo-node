#!/bin/bash

echo "🔍 Checking Tempo node status..."
docker ps --filter "name=tempo-node"

if docker ps | grep -q tempo-node; then
  echo "✅ Node is RUNNING"
else
  echo "❌ Node is NOT running"
fi

read -p "Press Enter to return to menu..."
