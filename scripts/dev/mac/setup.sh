#!/bin/sh

# homebrew
if [[ "$(brew --version 2>/dev/null)" != "" ]]; then
  # インストール済みの場合
  echo "Alerady Installed."
  exit
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  source $HOME/.zprofile
fi

# Rosetta2
softwareupdate --install-rosetta --agree-to-license

# 利用するアプリケーション
brew install --cask google-chrome
brew install --cask slack
# パッケージ
brew install openssl
brew install git-flow
brew install jq

# php
brew install php@8.3
echo 'export PATH="/usr/local/opt/apr/bin:$PATH"' >> ~/.zprofile
echo 'alias composer="php -d memory_limit=-1 /usr/local/bin/composer"' >> ~/.zprofile
brew services start php

# nvm
git clone https://github.com/creationix/nvm.git $HOME/.nvm
source $HOME/.nvm/nvm.sh
echo '[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh' >> ~/.zprofile
echo 'nvm use stable' >> ~/.zprofile
source $HOME/.nvm/nvm.sh
### node.js
nvm install stable
nvm use stable


