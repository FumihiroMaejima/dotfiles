#!/bin/sh

if [[ "$(aws --version 2>/dev/null)" != "" ]]; then
  # インストール済みの場合
  echo "Alerady Installed."
  exit
fi

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliV2.zip"
unzip awscliV2.zip
sudo ./aws/install
