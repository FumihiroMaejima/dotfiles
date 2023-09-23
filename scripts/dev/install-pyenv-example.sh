#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

TARGET_PYTHON_VERSION='3.9.7'
PROFILE_FILE_NAME='.zprofile'

# pyenvのインストール(インストール済みなら不要)
# git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

# profileへの反映(設定済みなら不要)
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/"$PROFILE_FILE_NAME"
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/"$PROFILE_FILE_NAME"
# echo 'eval "$(pyenv init --path)"' >> $HOME/"$PROFILE_FILE_NAME"

source $HOME/"$PROFILE_FILE_NAME"

# インストールするバージョンの確認
# pyenv install --list

# Pythonのインストール
nvm install "$TARGET_PYTHON_VERSION"
nvm use "$TARGET_PYTHON_VERSION"

$HOME/.pyenv/bin/pyenv install "$TARGET_PYTHON_VERSION"

# 有効化
$HOME/.pyenv/bin/pyenv global "$TARGET_PYTHON_VERSION"
$HOME/.pyenv/bin/pyenv local "$TARGET_PYTHON_VERSION"

# パッケージのインストール
# $HOME/.pyenv/shims/pip install awscli
# $HOME/.pyenv/shims/pip uninstall awscli
