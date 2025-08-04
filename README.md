# 🎮 XCloud Launcher

<p align="center">
  <img src="./icon.png" alt="XCloud Launcher" width="150"/>
</p>


**XCloud Launcher** is a native desktop app for [Xbox Cloud Gaming](https://xbox.com/play), designed for **Linux** and **macOS** users who want a streamlined, browser-free experience. Built with Electron, it features auto-login, gamepad support, and native packaging for `.AppImage`, `.deb`, and `.dmg`.



---

## ✨ Features

- ✅ Auto-login with persistent cookies/session
- ✅ Native application (no browser required)
- 🎮 Gamepad detection and support
- 🖥️ Linux `.AppImage` / `.deb` and macOS `.dmg` support
- 🌒 Dark/light mode toggle *(coming soon)*
- 🕹️ Gamepad-to-mouse support *(planned)*
- ⚙️ System tray and fullscreen toggle
- 📦 Cross-platform installer build via `electron-builder`

---

## 📦 Installation

### 🐧 Linux (AppImage)

``` bash
curl -L https://github.com/marcusperdue/xcloud-launcher/releases/latest/download/XCloud-Launcher-1.0.0.AppImage -o xcloud-launcher.AppImage
chmod +x xcloud-launcher.AppImage
./xcloud-launcher.AppImage
```

### 🐧 Linux (Debian/Ubuntu)

```bash
curl -L https://github.com/marcusperdue/xcloud-launcher/releases/latest/download/xcloud-launcher_1.0.0_amd64.deb -o xcloud-launcher.deb
sudo dpkg -i xcloud-launcher.deb
```

### 🍎 macOS (Apple Silicon)

1. [Download the `.dmg`](https://github.com/marcusperdue/xcloud-launcher/releases/latest) from the releases page  
2. Open the `.dmg` and drag **XCloud Launcher** into your **Applications** folder  
3. First launch: Right-click → **Open** (to bypass Gatekeeper)

---

## 🔧 Build from Source

### Prerequisites

- Node.js `>= 18`
- npm `>= 9`
- Git
- OS: Linux (x64) or macOS (ARM64)

### Steps

```bash
git clone https://github.com/marcusperdue/xcloud-launcher.git
cd xcloud-launcher
npm install
npm run build
```

### Output

- macOS: `dist/XCloud Launcher-1.0.0-arm64.dmg`  
- Linux AppImage: `dist/XCloud-Launcher-1.0.0.AppImage`  
- Linux .deb: `dist/xcloud-launcher_1.0.0_amd64.deb`

---

## 🗂 Project Structure

```bash
xcloud-launcher/
├── dist/                  # Build output
├── electron/              # Electron main & preload
│   ├── main.js
│   └── preload.js
├── index.html             # Main UI
├── icon.png / icon.icns   # App icons
├── package.json           # Project config & metadata
└── README.md              # You're reading it!
```

---

## 🛠 Tech Stack

- **Electron** — cross-platform native apps with JavaScript
- **Node.js** — runtime environment
- **HTML + CSS + JavaScript** — frontend UI
- **electron-builder** — packaging & installer automation

---

## 🚀 Roadmap

- [x] Auto-login with session cookies
- [x] Gamepad detection
- [x] Linux `.deb` & `.AppImage` support
- [x] macOS `.dmg` build
- [ ] Dark/light theme toggle
- [ ] Gamepad-to-mouse emulation
- [ ] In-app settings menu
- [ ] Auto-updates
- [ ] Virtual joystick overlay

---

## 🙌 Credits

Made with ❤️ by **Marcus Perdue**  
GitHub: [@marcusperdue](https://github.com/marcusperdue)

---

## 📄 License

MIT — free for personal and commercial use.
