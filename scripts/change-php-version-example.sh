#!/bin/sh

# CURRENT_DIR=$(cd $(dirname $0); pwd)
DELIMITER_LINE='------------------------------------------------------'
# Latest の場合は`php`のみとなる。
# PHP_MAJOR_VERSION='php'
PHP_MAJOR_VERSION='php@8.0'
PHP_FULL_VERSION='8.0.15'

showMessage() {
  echo ${DELIMITER_LINE}
  echo $1
}

binPackages=(
pear
peardev
pecl
phar
phar.phar
php
php-cgi
php-config
phpdbg
phpize
)

sbinPackages=(
php-fpm
)

# unlink
showMessage 'Unlink Current Symbolic Link'
for item in "${binPackages[@]}"; do
  unlink /opt/homebrew/bin/$item
done

for item in "${sbinPackages[@]}"; do
  unlink /opt/homebrew/sbin/$item
done

# make link
showMessage `make Symbolic Link of PHP ${PHP_FULL_VERSION}`
for item in "${binPackages[@]}"; do
  ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/$item /opt/homebrew/bin/$item
done

for item in "${sbinPackages[@]}"; do
  ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/sbin/$item /opt/homebrew/sbin/$item
done


# restart
showMessage 'Restert PHP Service'
brew services restart php

# check current version
showMessage 'Check Current PHP Version'
php -v
