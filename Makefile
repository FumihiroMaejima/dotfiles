.PHONY: help
.DEFAULT_GOAL := help

##############################
# make symbolic link
##############################
link:
	sh ./scripts/link.sh

##############################
# unlink symbolic link
##############################
unlink:
	sh ./scripts/unlink.sh

##############################
# enabled symbolic link
##############################
source:
	sh ./scripts/source.sh

##############################
# change PHP version
##############################
change-php:
	sh ./scripts/dev/change-php-version.sh

##############################
# Update Node.Js version & install package
##############################
install-node:
	sh ./scripts/dev/install-node-package.sh

##############################
# install pyenv & python
##############################
install-pyenv:
	sh ./scripts/dev/install-pyenv.sh

##############################
# Update Goenv version & install Golang
##############################
update-goenv:
	sh ./scripts/dev/update-goenv-version.sh

install-golang:
	sh ./scripts/dev/install-golang-by-goenv.sh

##############################
# etc
##############################
help:
	@cat Makefile
