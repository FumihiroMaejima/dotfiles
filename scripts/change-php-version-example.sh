#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
SEPARATOPION='---------------------------'
# Latest の場合は`php`のみとなる。
# PHP_MAJOR_VERSION='php'
PHP_MAJOR_VERSION='php@8.0'
PHP_FULL_VERSION='8.0.15'

showMessage() {
  echo ${SEPARATOPION}
  echo $1
}

# unlink
showMessage 'Unlink Current Symbolic Link'
unlink /opt/homebrew/bin/php
unlink /opt/homebrew/sbin/php-fpm

# make symbolic link
showMessage `make Symbolic Link of PHP ${PHP_FULL_VERSION}`
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/php /opt/homebrew/bin/php
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/sbin/php-fpm /opt/homebrew/sbin/php-fpm

# restart
showMessage 'Restert PHP Service'
brew services restart php

# check current version
showMessage 'Check Current PHP Version'
php -v
