#!/bin/sh

SEPARATOPION='---------------------------'

# ホームディレクトリに配置予定の設定ファイル
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

showMessage 'make dotfiles symbolic link.'

# -f force リンクファイルと同じ名前のファイルがあっても強制的に上書きする
for file in "${dotfiles[@]}"; do
  ln -svf ../$file ~/
done

# 現在のDocker コンテナの状態を出力
showMessage 'Current doffiles status'
echo ${SEPARATOPION}
ls -la ~/
echo ${SEPARATOPION}

