#!/bin/sh

DELIMITER_LINE='------------------------------------------------------'

# 有効化予定の設定ファイル
dotfiles=(
.bashrc
.bash_profile
.zshrc
.zprofile
.huskyrc
.tmux.conf
)

showMessage() {
  echo ${DELIMITER_LINE}
  echo $1
}

showMessage 'enabled dotfiles symbolic link.'

for file in "${dotfiles[@]}"; do
  source ~/$file
done

# 現在のホームディレクトリのdotfilesの状態を出力
showMessage 'Current doffiles status'
echo ${DELIMITER_LINE}
ls -la ~/
echo ${DELIMITER_LINE}

