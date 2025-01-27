#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)

function settingProfile() {
  ### .zprofileに設定を反映(設定済みなら不要)
  # echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  source $HOME/.zprofile
}

function settingProfileWithBash() {
  # ファイルが無い場合
  if [ ! -e $HOME/.bash_profile ]; then
    touch $HOME/.bash_profile
    chmod 755 $HOME/.bash_profile
  fi
  source $HOME/.bash_profile
}

if [[ "$(nvim --version 2>/dev/null)" != "" ]]; then
  # インストール済みの場合
  echo "Alerady Installed."
  exit
fi

# if [[ "$2" == */* ]]; then
if [[ "$(uname -m)" == "arm64" ]]; then
  # arm64の場合
  echo "Your uname -m is: arm64."
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz
  tar xzf nvim-macos-arm64.tar.gz
  # 解凍してからzipファイルはtmpディレクトリに移動
  mv nvim-macos-arm64.tar.gz tmp/

  # /usr/localに移動
  sudo mv ./nvim-macos-arm64 /usr/local/
  sudo ln -svf /usr/local/nvim-macos-arm64/bin/nvim /usr/local/bin/

  # nvimの実行
  # ./tmp/nvim-macos-arm64/bin/nvim
  nvim --version
elif [[ "$(uname -m)" == "x86_64" ]]; then
  # x86_64の場合
  echo "Your uname -m is: x86_64."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
  sudo rm -rf /opt/nvim
  sudo tar -C /opt -xzf nvim-linux64.tar.gz
else
  echo "No Target uname: " . $(uname -m)
  exit
fi

# $HOME/.configに設定を追加
ln -svf $CURRENT_DIR $HOME/.config/

# 下記で現在のconfigのパスの設定を確認出来る
# :echo stdpath('config')

# parameter check
if [ "$1" == 'bash' ]; then
  settingProfileWithBash
else
  settingProfile
fi

# 下記でnvim上でluaのスクリプトを実行出来る
# :lua print("hello world")

##############################
# type :help nvim            #
# type :checkhealt           #
# type :q                    #
# type :help                 #
# ----------                 #
# #command line              #
# nvim -h                    #
##############################

