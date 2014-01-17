#!/bin/bash

echo "Lithium Installer"
echo "----------------------"
echo ""

echo "Getting the Lithium Framework from GitHub"
echo ""
git clone https://github.com/tmaiaroto/lithium_composer.git .
echo ""

if type -p composer >/dev/null 2>&1; then
	composer install
	else if [ -f "composer.phar" ]; then
		php composer.phar install
	else 
		echo ""
		echo "Getting Composer for you..."
		curl -sS https://getcomposer.org/installer | php
		php composer.phar install
	fi
fi

echo ""
echo "Setting cache directory permissions and creating a symlink to the li3 command for you..."
chmod -R 777 resources
chmod +x libraries/unionofrad/lithium/lithium/console/li3
ln -s libraries/unionofrad/lithium/lithium/console/li3 li3
alias li3='./li3'
echo ""

echo ""
echo "Installation complete."
echo "------------------------"