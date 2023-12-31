#!/bin/sh

# php
function installPhp() {
  # brew search php@8
  brew install php@8.2
  # echo 'export PATH="/usr/local/opt/apr/bin:$PATH"' >> ~/.bash_profile
  # echo 'alias composer="php -d memory_limit=-1 /usr/local/bin/composer"' >> ~/.bash_profile
  # source ~/.bash_profile
  brew services start php
}


# install brew package
brew install openssl
brew install git-flow
brew install jq
