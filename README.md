<h2 align="center">dotfiles</h2>

<div align="center">

[![Status](https://img.shields.io/github/last-commit/nicohaenggi/dotfiles.svg?style=flat-square)](https://github.com/nicohaenggi/dotfiles/commits/master)
[![GitHub Issues](https://img.shields.io/github/issues/nicohaenggi/dotfiles.svg?style=flat-square)](https://github.com/nicohaenggi/dotfiles/issues)
[![License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](https://github.com/nicohaenggi/dotfiles/blob/master/LICENSE)
[![Version](https://img.shields.io/github/v/release/nicohaenggi/dotfiles.svg?style=flat-square)](https://github.com/nicohaenggi/dotfiles/releases)

</div>

---

<p align="center">
💻 A shell script to install and configure macOS.
  <br>
</p>

__dotfiles__ is a simple script that can be used after a clean installation of macOS to configure and install all the apps that you need. It uses _dotfiles_ and _shell scripts_ in order to speed up the configuration of macOS.

## Table of content

- [Table of content](#table-of-content)
- [Getting Started](#getting-started)
- [Requirements](#requirements)
- [Setup](#setup)
- [Useful links](#useful-links)
- [Credits](#credits)

## Getting Started

You need an active internet connection and one of the following macOS version already installed:

- ✔️ macOS 11.00 "Big Sur"

## Requirements

1. Fresh installation of macOS (version 11.00+)
2. Signed to Apple Store with your iCloud account
3. Cloned the repo with the command `git clone https://github.com/nicohaenggi/dotfiles.git ~/dotfiles`

## Setup

1. Open __Terminal.app__ and run the command `chmod -R 777 ~/dotfiles && ~/dotfiles/install.sh`, a prompt will appear from which you can choose one of the four options (install, configure, update or exit).
2. `Install`: install Homebrew package, binaries, casks, dependencies and Mac Apple Store application listed in `Brewfile` file
3. `Configure`: configure macOS with useful commands and update `zsh`
4. `Update`: update brews, casks and MAS applications and formulaes

For a step-by-step guide click [__here__](https://github.com/nicohaenggi/dotfiles/blob/master/doc/SETUP.md).

## Useful links

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/APPLIST.md) to find a collection of various apps I've personally tested or used in the past on macOS.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CHANGELOG.md) to find the full changelog history.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/projects/8) to find the current status and the upcoming milestones of the Clean-macOS project.

## Credits

- [@MarioCatuogno](https://github.com/MarioCatuogno/) for his amazing [Clean-macOS](https://github.com/MarioCatuogno/Clean-macOS) scripts
