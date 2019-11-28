#!/bin/bash

if [ ! -d /Applications/Slack.app/ ]; then
  echo "Installing Slack"
  brew cask install Slack
  read -n 1 -p "Slack installed."
fi