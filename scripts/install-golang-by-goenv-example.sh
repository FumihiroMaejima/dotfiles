#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

# Check target golang version by goenv
TRGET_GOLANG_VERSION='1.18.5'

showMessage() {
  echo ${DELIMITER_LINE}
  echo $1
}

if [[ "$(ls $HOME/.goenv 2>/dev/null)" == "" ]]; then
    echo "goenv Not exist. Failed."
    exit
fi

goenv install "$(TRGET_GOLANG_VERSION)"

cp -rf $HOME/.goenv/versions/${TRGET_GOLANG_VERSION} ~/go/

source $HOME/.zprofile
source $HOME/.zshrc


goenv global "${TRGET_GOLANG_VERSION}"

# 反映させるにはシェルの再起動が必要
go version

# 反映確認後に下記のコマンドを実行すること。
# go env -w GO111MODULE=on
# go env GO111MODULE
