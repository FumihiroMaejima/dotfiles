#!/bin/sh

DELIMITER_LINE='------------------------------------------------------'

# 削除予定の設定ファイル
dotfiles=(
.bashrc
.bash_profile
.zshrc
.zprofile
# .huskyrc
.tmux.conf
)

showMessage() {
  echo ${DELIMITER_LINE}
  echo $1
}

showMessage 'unlink dotfiles symbolic link.'

for file in "${dotfiles[@]}"; do
  unlink ~/$file
done

# 現在のホームディレクトリのdotfilesの状態を出力
showMessage 'Current doffiles status'
echo ${DELIMITER_LINE}
ls -la ~/
echo ${DELIMITER_LINE}

