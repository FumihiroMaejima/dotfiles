#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
SEPARATOPION='---------------------------'

# ホームディレクトリに配置予定の設定ファイル
dotfiles=(
.bashrc
.bash_profile
.zshrc
.zprofile
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

# 現在のホームディレクトリのdotfilesの状態を出力
showMessage 'Current doffiles status'
echo ${SEPARATOPION}
ls -la ~/
echo ${SEPARATOPION}

