#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/dotfiles/bin                # shell scripts
CONFIG=~/dotfiles/config          # configuration files directory
SETUP=~/dotfiles                  # root folder of dotfiles

###############################################################################
# Syncing Secrets                                                             #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Login into 1Password
read -p '1Password sign-in address: (empty to skip)' domain
if [ -z "$domain" ]
then
  eval $(op signin)
else
  read -p '1Password email address: ' email
  eval $(op signin $domain $email)
fi

# Create SSH directory
mkdir -p ~/.ssh

# List all SSH keys
SSH_KEYS=( $(op list items --tags SSH | jq '.[].uuid') ) 
for i in "${SSH_KEYS[@]}"
do
  printf "📦 Getting Item $i...\n"
  RESULT=$(op get item ${i:1:${#i}-2} --fields 'key name','public key','notes')
  NAME=$(jq '."key name"' -r <<< "$RESULT")
  printf "📦 Writing Key $NAME...\n"
  jq '."public key"' -r <<< "$RESULT" > ~/.ssh/$NAME.pub
  jq '."notes"' -r <<< "$RESULT" > ~/.ssh/$NAME
  sudo chmod 600 ~/.ssh/$NAME.pub
  sudo chmod 600 ~/.ssh/$NAME
done

# Exit script
exit
