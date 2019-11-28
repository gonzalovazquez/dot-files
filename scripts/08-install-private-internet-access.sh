#!/bin/bash

if [ ! -d /Applications/Private Internet Access.app/ ]; then
  echo "Installing Private Internet Access"
  brew cask install private-internet-access
  read -n 1 -p "Private Internet Access installed."
fi