#!/bin/bash

if [ ! -d /Applications/1Password\ 7.app/ ]; then
  echo "Installing 1Password"
  brew cask install 1password
  open /Applications/1Password\ 7.app/ &
  read -n 1 -p "1Password installed. Please login, then press [any key] to continue"
fi