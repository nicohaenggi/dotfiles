#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/dotfiles/bin                # shell scripts
CONFIG=~/dotfiles/config          # configuration files directory
SETUP=~/dotfiles                  # root folder of dotfiles

###############################################################################
# Configure                                                                   #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Oh-My-Zsh [1/3]
if [ ! -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
  printf "📦 Install Zsh...\n"  
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install Zsh plugins [2/3]
install_zsh_plugin() {
  if [ ! -d ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/$1 ]; then
    printf "📦 Install Zsh plugin '$1'...\n"
    git clone $2 ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/$1
  fi
}
install_zsh_plugin zsh-completions https://github.com/zsh-users/zsh-completions
install_zsh_plugin zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting.git
install_zsh_plugin zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions

# Update Zsh settings [3/3]
printf "⚙️ Update Zsh settings...\n"
sudo rm -rf ~/.zshrc > /dev/null 2>&1
ln -s $CONFIG/.zshrc ~/.zshrc

# Linking dotfiles [1/1]
printf "⚙️ Linking dotfiles...\n"
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
ln -s $CONFIG/.gitconfig ~/.gitconfig

# Configuring NVM [1/2]
printf "⚙️ Configure NVM...\n"
mkdir -p ~/.nvm

# Install Node [2/2]
source $BIN/node.sh

# Configure macOS Finder
printf "⚙️ Configure Finder...\n"
defaults write -g AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles true
defaults write com.apple.finder ShowPathbar -bool true
chflags nohidden ~/Library
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Configure macOS Keyboard
printf "⚙️ Configure Keyboard...\n"
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

# Configure Dock
printf "⚙️ Configure Safari...\n"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 50
defaults write com.apple.dock autohide-time-modifier -float 0.1
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock largesize -int 65
defaults write com.apple.dock magnification -bool true

# Configure Hostname
sudo scutil --set ComputerName "the-xx-macbook"
sudo scutil --set LocalHostName "the-xx-macbook"
sudo scutil --set HostName "the-xx-macbook"

# Configure macOS Safari
printf "⚙️ Configure Safari...\n"
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari ShowFavoritesBar -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Configure macOS TextEdit
printf "⚙️ Configure TextEdit...\n"
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Configure macOS Trackpad
printf "⚙️ Configure Trackpad...\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Configure macOS
printf "⚙️ Various configuration...\n"
defaults write com.apple.gamed Disabled -bool true
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Check if Python3 is installed via Homebrew
if brew ls --versions python3 > /dev/null; then
  brew uninstall --ignore-dependencies python3
else
  echo "Python3 is not installed! Install it from https://www.python.org"
fi

# Cleanup
printf "⚙️ Cleanup and final touches...\n"
brew -v update && brew -v upgrade && brew upgrade --cask && mas upgrade && brew -v cleanup --prune=2 && brew doctor

# Exit script
exit
