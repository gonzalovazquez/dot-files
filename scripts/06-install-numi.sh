#!/bin/bash

if [ ! -d /Applications/Numi.app/ ]; then
  echo "Installing Numi"
  brew cask install Numi
  read -n 1 -p "Numi installed."
fi