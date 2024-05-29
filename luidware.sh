#!/bin/bash

function packageStatus() {
	if [ $? -eq 0 ]; then
		echo "$package - successfully installed" >>logs/packagesInstalled
	else
		echo "$package - not successfully installed" >>logs/packagesInstalled
	fi
}

function downloadaPackage() {
	sudo apt install $package -y >>logs/$package.log
	packageStatus
}

if [ ! -d logs ]; then
	mkdir -p logs
fi

sudo apt update -y >logs/Update.log
sudo apt upgrade -y >logs/Upgrade.log

while IFS= read -r package; do
	downloadaPackage
done <packages
