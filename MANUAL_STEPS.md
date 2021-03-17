# Setup

This is a detailed list of instructions to setup a fresh macOS environment as fast and efficient as possible.

## Table of content

- [Setup](#setup)
- [Table of content](#table-of-content)
- [Requirements](#requirements)
- [Applications](#applications)
- [Missing steps](#missing-steps)

## Requirements

You need an active internet connection and one of the following macOS version:

- ✔️ macOS 11.00 "Big Sur"

Do a fresh install of macOS (version 11.00+) and after your first access to macOS follow the instructions below:

1. Run the `~/dotfiles/install.sh` command as explained previously 
2. Go to __Dock & Menu Bar > Control Centre > Bluetooth | Time Machine__ Enable "Show in Menu Bar"
3. Go to __Dock & Menu Bar > Control Centre > Battery__ Enable "Show Percentage"
4. Go to __Dock & Menu Bar > Control Centre > Spotlight__ Disable "Show in Menu Bar"
5. Go to __Touch ID__ Enable "iTunes Store, App Store & Apple Books"
6. Go to __Safari > Preferences > Extensions__ Enable *1Password*
7. Go to __General > Default web browser__ and change it to *Google Chrome*
8. Go to __Dock & Menu Bar__ and change the following:
  - __Dock__: Enable *Magnification* and *Automatically hide and show the Dock*; Disable *Show recent applications in Dock*
  - __Bluetooth__: Enable *Show in Menu Bar*
9. Go to __Users & Group > Current User > Login Items__ add the folowing applications: *TickTick*, *1Password 7*, *Focus*, *CheatSheet* and *Timemator*
11. Go to __Keyboard__ and change the following:
  - 
7. Go to [iTerm 2 Color Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes) or [macOS Terminal Color Schemes](https://github.com/lysyi3m/macos-terminal-themes) and choose your terminal color theme. We are currently using `AtelierSulphurpool`. Install in your terminal application(s) and make it the default theme.
8. Set up your Dock and Finder Sidebar ordering
9. Install potential VPN configurations
10. Go through __System Preferences__ and configure as wished
11. Restart macOS

## Applications

The following additional setup steps are needed:

- [Charles](https://www.charlesproxy.com/): activate license
- [Focus](https://heyfocus.com/): activate license
- [Exodus](https://www.exodus.io/): import private keys
- [Google Chrome](https://www.google.com/chrome/): enable sync with *Google Account*
- [Visual Studio Code](https://code.visualstudio.com/): turn on *Settings Sync*
- [Sketch](https://www.sketch.com/): install using `.dmg`
- [Transmit](https://panic.com/transmit/): install using `.dmg`
- [Docker](https://docker.com): enable `Kubernetes` in the `Preferences`

These applications were previously used but deemed unnecessary:

- [Hopper Disassembler](https://www.hopperapp.com/): install using `.dmg`
- [DJI Assistant](https://www.dji.com/ch/downloads/softwares/assistant-dji-2)
- [Bluetility](https://github.com/jnross/Bluetility)
- [iOS App Signer](https://dantheman827.github.io/ios-app-signer/)
- [JD-GUI](http://java-decompiler.github.io/)
- [PacketLogger](https://developer.apple.com/xcode/): can be installed using *Xcode Developer Tools*
- [Robo 3T](https://robomongo.org/)
- [Sitesucker](https://ricks-apps.com/osx/sitesucker/index.html)
- [Frida](https://frida.re/)
- [StarUML](https://staruml.io/): find replacement