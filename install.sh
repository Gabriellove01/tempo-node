#!/bin/bash
set -e

echo "🛠 Installing Tempo node dependencies..."

sudo apt update -y
sudo apt upgrade -y

if ! command -v docker &> /dev/null
then
    echo "🐳 Installing Docker..."
    sudo apt install -y docker.io
    sudo systemctl enable docker
    sudo systemctl start docker
fi

if ! command -v docker-compose &> /dev/null
then
    echo "📦 Installing Docker Compose..."
    sudo apt install -y docker-compose
fi

sudo apt install -y git curl unzip

echo "✅ Dependencies installed."

docker pull tempo/node:latest
echo "✅ Tempo node image ready."
