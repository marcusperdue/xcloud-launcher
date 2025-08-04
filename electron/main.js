const { app, BrowserWindow, ipcMain } = require('electron');
const path = require('path');

let win;

function createWindow() {
  win = new BrowserWindow({
    width: 1280,
    height: 800,
    title: 'Xbox Cloud',
    backgroundColor: '#000000',
    autoHideMenuBar: true,
    icon: path.join(__dirname, '../icon.png'),
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      nodeIntegration: false,
      contextIsolation: true,
    },
  });

  win.loadURL('https://www.xbox.com/play');
}

app.whenReady().then(createWindow);

ipcMain.on('toggle-fullscreen', () => {
  win.setFullScreen(!win.isFullScreen());
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});
