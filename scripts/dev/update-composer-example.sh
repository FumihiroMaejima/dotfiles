#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)

SUDO_PASSWORD=test_password

# openssl がインストールされていない場合
# brew install openssl

curl -sS https://getcomposer.org/installer | php
# sudoで実行する必要がある
echo ${SUDO_PASSWORD} | sudo -S mv composer.phar /usr/local/bin/composer
composer --version
