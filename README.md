# 🎮 XCloud Launcher

**XCloud Launcher** is a polished, cross-platform desktop launcher for [Xbox Cloud Gaming (xCloud)](https://xbox.com/play), designed specifically for **macOS** and **Linux**.  
It provides native-like streaming with auto-login, gamepad detection, and more — no browser needed.

![XCloud Launcher](./icon.png)

---

## 🚀 Features

- ✅ Auto-login to [xbox.com/play](https://xbox.com/play)
- ✅ Persistent session via cookie/localStorage
- 🎮 Gamepad detection and support
- 🎨 Custom native launcher UI
- 🖥️ macOS `.dmg` and Linux `.AppImage` support
- 🌒 Optional dark/light mode (coming soon)
- 🎮 Gamepad-to-mouse support (planned)
- 📦 App packaging with custom icon

---

## 🧑‍💻 Tech Stack

- [Electron](https://www.electronjs.org/)
- [Node.js](https://nodejs.org/)
- HTML + CSS + JS

---

## 📦 Installation

### 🔧 Prerequisites

- Node.js ≥ 18
- npm ≥ 9
- macOS (ARM64) or Linux (x64 / ARM64)

### 🔨 Build Locally

```bash
git clone https://github.com/marcusperdue/xcloud-launcher.git
cd xcloud-launcher
npm install
npm run build
