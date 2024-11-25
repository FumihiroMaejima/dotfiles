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

