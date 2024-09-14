#!/bin/sh

function settingProfile() {
  ### .zprofileに設定を反映(設定済みなら不要)
  # echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  source $HOME/.zprofile
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

settingProfile

##############################
# type :help nvim            #
# type :checkhealt           #
# type :q                    #
# type :help                 #
##############################

