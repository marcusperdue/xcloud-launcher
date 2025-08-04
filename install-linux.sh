#!/bin/bash

set -e

echo "📥 Installing XCloud Launcher..."

# Install dependencies
if [ -x "$(command -v dnf)" ]; then
  sudo dnf install -y nodejs npm git libappindicator-gtk3
elif [ -x "$(command -v apt)" ]; then
  sudo apt update && sudo apt install -y nodejs npm git libappindicator3-1
fi

# Clone repo
git clone https://github.com/marcusperdue/xcloud-launcher.git
cd xcloud-launcher

# Install node packages
npm install

# Build the app
npm run build

# Run the AppImage
APP=$(find dist -name '*.AppImage' | head -n 1)
chmod +x "$APP"
echo "🚀 Launching XCloud Launcher..."
"./$APP"
