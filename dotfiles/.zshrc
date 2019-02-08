# UTF
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# PIPENV
export PIPENV_VENV_IN_PROJECT=1

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# USER
user=$(whoami)
# Add nvm to user
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Path to your oh-my-zsh installation.
export ZSH="/Users/$user/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Disable r (re-run last time)
disable r

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Alias
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles NO"
alias valhalla='ssh server.gonzalovazquez@gonzalovazquez.ca'
alias datalake='ssh x208072@qcr-hadoop-e001.oss.ads'
alias inspect='node --inspect --inspect-brk ./node_modules/jest/bin/jest.js'
alias find-port='lsof -i tcp:'
alias localip="ipconfig getifaddr en0"
alias h="history"
alias weather='curl -4 http://wttr.in/Toronto'
alias serve="npx http-server"

# Androud Configurations
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Export Go
export GOPATH=$HOME/Projects/experiments/playing-with-go

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$user/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$user/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$user/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$user/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
