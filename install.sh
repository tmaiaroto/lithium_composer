#!/bin/bash

echo "Lithium Installer"
echo "----------------------"
echo ""

echo "Getting the Lithium Framework from GitHub"
echo ""
git clone https://github.com/tmaiaroto/lithium_composer.git .
echo ""

echo "Setting application cache directories and permissions..."
chmod -R 777 resources
echo ""

if ! type -p composer > /dev/null; then
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
echo "Creating a symlink to li3 for you..."
chmod +x libraries/unionofrad/lithium/lithium/console/li3
ln -s libraries/unionofrad/lithium/lithium/console/li3 li3
alias li3='./li3'
echo ""

echo ""
echo "Installation complete."
echo "------------------------"