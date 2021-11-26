#!/bin/sh

SEPARATOPION='---------------------------'

# 削除予定の設定ファイル
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

showMessage 'unlink dotfiles symbolic link.'

for file in "${dotfiles[@]}"; do
  unlink ~/$file
done

# 現在のホームディレクトリのdotfilesの状態を出力
showMessage 'Current doffiles status'
echo ${SEPARATOPION}
ls -la ~/
echo ${SEPARATOPION}

