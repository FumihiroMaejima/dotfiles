#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

# Check target golang version by goenv
TRGET_GOLANG_VERSION='1.18.5'
PROFILE_FILE_NAME='.zprofile'
PROFILE_RC_FILE_NAME='.zshrc'

showMessage() {
  echo ${DELIMITER_LINE}
  echo $1
}

if [[ "$(ls $HOME/.goenv 2>/dev/null)" == "" ]]; then
    echo "goenv Not exist. Failed."
    exit
fi

goenv install "$TRGET_GOLANG_VERSION"

cp -rf $HOME/.goenv/versions/${TRGET_GOLANG_VERSION} $HOME/go/

source $HOME/"$PROFILE_FILE_NAME"
source $HOME/"$PROFILE_RC_FILE_NAME"

goenv global "$TRGET_GOLANG_VERSION"

# WARING 反映させるにはシェルの再起動が必要
$HOME/go/${TRGET_GOLANG_VERSION}/bin/go version

### echo $GOPATH
echo $GOPATH

# 反映確認後に下記のコマンドを実行すること。
# go env -w GO111MODULE=on
# go env GO111MODULE
