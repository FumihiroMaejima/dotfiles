#!/bin/sh

# sdlなどのC言語ライブラリを使う場合に必要
# macOSの場合はhomebrewでインストール出来る
brew install pkg-config

# install brew package


# $PKG_CONFIG,$PKG_CONFIG_PATHなどの環境変数は自動で設定される。
brew install pkg-config
brew install sdl2
# `github.com/veandco/go-sdl2/img`などのラッパーでsdl2_imageを使うには、下記のインストールが必要
brew install sdl2_image

# アンインストールしたい場合
# brew uninstall sdl2_image
# brew uninstall sdl2
# brew uninstall pkg-config
