#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/dotfiles/bin                # shell scripts
CONFIG=~/dotfiles/config          # configuration files directory
SETUP=~/dotfiles                  # root folder of dotfiles

###############################################################################
# Update                                                                      #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Cleanup
printf "⚙️ Updating Brew ...\n"
brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy 

# Exit script
exit
