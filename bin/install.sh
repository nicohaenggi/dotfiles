#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/dotfiles/bin                # shell scripts
CONFIG=~/dotfiles/config          # configuration files directory
SETUP=~/dotfiles                  # root folder of dotfiles

###############################################################################
# Install                                                                     #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Installing Xcode
printf "📦 Installing XCode CL tools...\n"
xcode-select --install
sudo xcodebuild -license accept

# Install Homebrew
printf "📦 Installing Homebrew...\n"
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Change permissions
brew -v
sudo chown -R $USER /usr/local/Cellar

# Install MAS
printf "📦 Installing MAS...\n"
brew install mas

# Install Cask
printf "📦 Installing Cask...\n"
brew cask help

# Check Brews
printf "⚙️ Check Brews...\n"
brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor

# Install Homebrew apps
printf "📦 Installing Apps...\n"
brew bundle --file=$SETUP/Brewfile

# Cleanup
printf "⚙️ Cleanup and final touches...\n"
brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy 

# Exit script
exit
