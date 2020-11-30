#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/dotfiles/bin                # shell scripts
CONFIG=~/dotfiles/config          # configuration files directory
SETUP=~/dotfiles                  # root folder of dotfiles

###############################################################################
# Menu                                                                        #
###############################################################################

process_option() {
  case $1 in
    'all')
      source $BIN/install.sh
      source $BIN/config.sh
      source $BIN/secrets.sh 
      break;;
    'brew')
      source $BIN/install.sh
      break;;
    'config')
      source $BIN/config.sh
      break;;
    'secrets')
      source $BIN/secrets.sh 
      break;;
    'update')
      source $BIN/update.sh
      break;;
      
    'q')
      break;;
    *)
      break;;
  esac
}


# MENU
while true; do
  if [[ $# == 0 ]]; then
    echo ""
    echo "********************************************************************"
    echo "*                          dotfiles                                *"
    echo "*                    This Version : 0.0.1                          *"
    echo "*    Base Version : 1.12.5 (based on MarioCatuogno/Clean-macOS)    *"
    echo "********************************************************************"
    echo ""
    echo "Available commands:"
    echo ""
    echo "      all:  Setup everything"
    echo ""
    echo "     brew:  Install Brewfile Dependencies & Applications"
    echo "   config:  Configure macOS (e.g. enabling developer mode)"
    echo "  secrets:  Synchronize secrets (e.g. SSH keys)"
    echo "   update:  Update System tools (e.g. Brew Dependencies & Applications)"
    echo ""
    echo "        q:  Quit/Exit."
    echo ""
    read -p "Enter option: " response
    echo ""
    process_option $response
  else
    process_option $1
  fi
done