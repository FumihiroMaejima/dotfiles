#!/bin/sh

SEPARATOPION='---------------------------'

# 有効化予定の設定ファイル
dotfiles=(
.bashrc
.bashsh_profile
.zshrc
.zsh_profile
.huskyrc
.tmux.conf
)

showMessage() {
  echo ${SEPARATOPION}
  echo $1
}

showMessage 'enabled dotfiles symbolic link.'

for file in "${dotfiles[@]}"; do
  source ~/$file
done

# 現在のDocker コンテナの状態を出力
showMessage 'Current doffiles status'
echo ${SEPARATOPION}
ls -la ~/
echo ${SEPARATOPION}
