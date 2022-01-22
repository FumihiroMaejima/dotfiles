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
	sh ./scripts/change-php-version.sh
