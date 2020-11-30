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
- [Credits](#credits)

## Getting Started

You need an active internet connection and one of the following macOS version already installed:

- ✔️ macOS 11.00 "Big Sur"

## Requirements

1. Fresh installation of macOS (version 11.00+)
2. Signed to Apple Store with your iCloud account
3. Cloned the repo with the command `git clone https://github.com/nicohaenggi/dotfiles.git ~/dotfiles`

## Setup

Open __Terminal.app__ and run the command `chmod -R 777 ~/dotfiles && ~/dotfiles/install.sh`, a prompt will appear from which you can choose one of the four options:
1. `brew`: install Homebrew package, binaries, casks, dependencies and Mac Apple Store application listed in `Brewfile` file
2. `config`: configure macOS with useful commands and update `zsh`
3. `secrets`: synchronizes the secrets stored in 1Password (e.g. SSH keys)
4. `update`: update brews, casks and MAS applications and formulaes

Finally, restart macOS.


## Credits

- [@MarioCatuogno](https://github.com/MarioCatuogno/) for his amazing [Clean-macOS](https://github.com/MarioCatuogno/Clean-macOS) scripts
