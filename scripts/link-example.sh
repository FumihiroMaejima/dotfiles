#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

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
  echo ${DELIMITER_LINE}
  echo $1
}

showMessage 'make dotfiles symbolic link.'

# -f force リンクファイルと同じ名前のファイルがあっても強制的に上書きする
for file in "${dotfiles[@]}"; do
  # ln -svf ../$file ~/
  ln -svf ${CURRENT_DIR}/../$file ~/
done

# 現在のホームディレクトリのdotfilesの状態を出力
showMessage 'Current doffiles status'
echo ${DELIMITER_LINE}
ls -la ~/
echo ${DELIMITER_LINE}

