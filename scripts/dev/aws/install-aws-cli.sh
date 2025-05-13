#!/bin/sh

PROFILE_FILE_NAME='.zprofile'

IS_REPRACE=$1
if [ "$IS_REPRACE" != "true" ]; then
  if [[ "$(aws --version 2>/dev/null)" != "" ]]; then
    # インストール済みの場合
    echo "Alerady Installed."
    exit
  fi
fi

### 公式のMac用のインストーラーをダウンロード
curl "https://awscli.amazonaws.com/AWSCLIV2-2.0.30.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /

aws --verion

### 不要かつそれなりに容量があるのでインストーラーを削除
rm ./AWSCLIV2.pkg
