#!/bin/bash

if ! command -v zsh > /dev/null 2>&1; then
  echo "Setting zsh as login shell..."
  chsh -s /bin/zsh
fi

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Installing oh-my-zsh..."
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

echo "Configuring zsh..."
rm ~/.zshrc
git clone git://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
cp ~/.laptop/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
