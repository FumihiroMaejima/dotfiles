#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

# Check target golang version by goenv
PRE_NODE_VERSION='18.7.0'
TARGET_NODE_VERSION='18.12.0'
ZPROFILE_FILE_NAME='.zprofile'
NVM_DIR=$HOME/.nvm;

changeNodeVersion() {
  cd ${CURRENT_DIR}/.. && \
  sed -i -e "s/^NODE_VERSION=v$1$/NODE_VERSION=v$2/g" ${ZPROFILE_FILE_NAME} && \
  rm -rf ${ZPROFILE_FILE_NAME}-e
}

# nvmのインストール
# git clone https://github.com/creationix/nvm.git $HOME/.nvm
# source $HOME/.nvm/nvm.sh
# vim $HOME/.zprofile
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
# nvm use stable

# nvmの有効化
source $NVM_DIR/nvm.sh;

# インストールするバージョンの確認
# nvm ls-remote

# nodeのインストール
nvm install "$TARGET_NODE_VERSION"
nvm use "$TARGET_NODE_VERSION"

# .zprofileへの反映
# echo 'export NODE_PATH=_modules:"$HOME"/.nvm/versions/node/"$TARGET_NODE_VERSION"/lib/node_modules' >> ~/.zprofile

changeNodeVersion "$PRE_NODE_VERSION" "$TARGET_NODE_VERSION"
source $HOME/.zprofile

# パッケージのインストール(vの接頭辞をつける)
$HOME/.nvm/versions/node/v$TARGET_NODE_VERSION/bin/npm install -g yarn typescript create-react-app @aws-amplify/cli
