#!/bin/bash

if [ ! -d /Applications/Moom.app/ ]; then
  echo "Installing Moom"
  brew cask install Moom
  read -n 1 -p "Moom installed."
fi