#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

showMessage() {
  echo ${DELIMITER_LINE}
  echo $1
}


showMessage 'Chechk goenv'

if [[ "$(ls $HOME/.goenv 2>/dev/null)" != "" ]]; then
  # 既存のディレクトリがある場合
  echo "exist already. remove old"
  rm -rf $HOME/.goenv
fi

git clone https://github.com/syndbg/goenv.git $HOME/.goenv

source $HOME/.zprofile


# check current version
showMessage 'Check Current goenv Version'
goenv -v

showMessage 'Check Latest Golang Version'
goenv install -l | tail -n 15
