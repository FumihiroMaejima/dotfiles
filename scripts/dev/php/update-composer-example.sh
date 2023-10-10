#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)

PASSWORD=test_password

# openssl がインストールされていない場合
# brew install openssl

curl -sS https://getcomposer.org/installer | php
# sudoで実行する必要がある
echo ${PASSWORD} | sudo -S mv composer.phar /usr/local/bin/composer
composer --version
