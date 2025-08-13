#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'

# Check target version
# macOSの場合はブラウザからインストーラーをダウンロードしてインストールのが手っ取り早い
DOTNET_DOWNLOAD_PATH=https://builds.dotnet.microsoft.com/dotnet/Sdk/9.0.304/dotnet-sdk-9.0.304-osx-arm64.pkg

# dotnetのダウンロードとインストール(未検証)
# curl -L -o dotnet-installer.pkg $DOTNET_DOWNLOAD_PATH
# sudo installer -pkg dotnet-installer.pkg -target /

DOTNET_ROOT=$(which dotnet)
echo "export DOTNET_ROOT=$DOTNET_ROOT" >> ~/.zprofile
echo 'export PATH="$PATH:$DOTNET_ROOT"' >> ~/.zprofile

# SDKのインストールパスのシンボリックリンクを設定
# sudo ln -s /usr/local/share/dotnet/x64/dotnet /usr/local/bin
ln -s /usr/local/share/dotnet/x64/dotnet /usr/local/bin

source $HOME/.zprofile
