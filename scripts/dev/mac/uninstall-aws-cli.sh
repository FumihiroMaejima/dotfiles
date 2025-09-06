#!/bin/sh

which aws

# メインプログラムとコンプリータへのシンボリックリンクを含むフォルダを見つける
## ex: /usr/local/bin/aws
AWS_WHICH_PATH=$(which aws)
if [ -z "$AWS_WHICH_PATH" ]; then
  echo "Not Installed."
  exit
fi
echo AWS_WHICH_PATH: $AWS_WHICH_PATH

# `ls -l /usr/local/bin/aws`でシンボリックリンクが指すインストールフォルダを見つける
## ex: /usr/local/aws-cli/aws
AWS_WHICH_SYMBOLIC_LINK_PATH=$(ls -l $AWS_WHICH_PATH | awk '{print $NF}')
echo AWS_WHICH_SYMBOLIC_LINK_PATH: $AWS_WHICH_SYMBOLIC_LINK_PATH

# 最初のフォルダの2つのシンボリックリンクを削除
sudo rm $AWS_WHICH_PATH
sudo rm /usr/local/bin/aws_completer

# メインインストールフォルダを削除
sudo rm -rf /usr/local/aws-cli

# coinfg系のファイルはそのまま ~/.awsなど
