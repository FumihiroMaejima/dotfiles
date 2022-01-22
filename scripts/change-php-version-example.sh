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
unlink /opt/homebrew/bin/phar
unlink /opt/homebrew/bin/phar.phar
unlink /opt/homebrew/bin/php
unlink /opt/homebrew/bin/php-cgi
unlink /opt/homebrew/bin/php-config
unlink /opt/homebrew/bin/phpdbg
unlink /opt/homebrew/bin/phpize
unlink /opt/homebrew/sbin/php-fpm

# make symbolic link
showMessage `make Symbolic Link of PHP ${PHP_FULL_VERSION}`
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/phar /opt/homebrew/bin/phar
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/phar.phar /opt/homebrew/bin/phar.phar
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/php /opt/homebrew/bin/php
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/php-cgi /opt/homebrew/bin/php-cgi
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/php-config /opt/homebrew/bin/php-config
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/phpdbg /opt/homebrew/bin/phpdbg
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/bin/phpize /opt/homebrew/bin/phpize
ln -svf /opt/homebrew/Cellar/${PHP_MAJOR_VERSION}/${PHP_FULL_VERSION}/sbin/php-fpm /opt/homebrew/sbin/php-fpm

# restart
showMessage 'Restert PHP Service'
brew services restart php

# check current version
showMessage 'Check Current PHP Version'
php -v
