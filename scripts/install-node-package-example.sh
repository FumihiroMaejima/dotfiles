#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

# Check target golang version by goenv
TRGET_NODE_VERSION='18.7.0'

# nvmのインストール
# git clone https://github.com/creationix/nvm.git $HOME/.nvm
# source $HOME/.nvm/nvm.sh
# vim $HOME/.zprofile
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
# nvm use stable

# インストールするバージョンの確認
# nvm ls-remote

# nodeのインストール
nvm install "$(TRGET_NODE_VERSION)"
nvm use "$(TRGET_NODE_VERSION)"

# .zprofileへの反映
echo 'export NODE_PATH=_modules:"$HOME"/.nvm/versions/node/"$TRGET_NODE_VERSION"/lib/node_modules' >> ~/.zprofile
source $HOME/.zshrc

# パッケージのインストール
npm install -g yarn typescript create-react-app @aws-amplify/cli
