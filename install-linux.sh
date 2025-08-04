#!/bin/bash

set -e

echo "📥 Installing XCloud Launcher..."

# Install dependencies
if [ -x "$(command -v dnf)" ]; then
  echo "🔧 Using DNF..."
  sudo dnf install -y nodejs npm git libappindicator-gtk3
elif [ -x "$(command -v apt)" ]; then
  echo "🔧 Using APT..."
  sudo apt update && sudo apt install -y nodejs npm git libappindicator3-1
else
  echo "❌ Unsupported package manager. Please install dependencies manually."
  exit 1
fi

# Clone the repo
if [ -d "xcloud-launcher" ]; then
  echo "📁 'xcloud-launcher' already exists. Removing it..."
  rm -rf xcloud-launcher
fi

echo "📦 Cloning repository..."
git clone https://github.com/marcusperdue/xcloud-launcher.git
cd xcloud-launcher

# Install Node packages
echo "📦 Installing Node dependencies..."
npm install

# Build the app
echo "🛠️ Building the app..."
npm run build

# Run the AppImage
APP=$(find dist -name '*.AppImage' | head -n 1)

if [ -f "$APP" ]; then
  chmod +x "$APP"
  echo "🚀 Launching XCloud Launcher..."
  ./"$APP"
else
  echo "❌ Build failed or AppImage not found."
  exit 1
fi
