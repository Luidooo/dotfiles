#!/bin/bash

$trash=trash

function packageStatus() {
	if [ $? -eq 0 ]; then
		echo "$package successfully installed" >>packagesInstalles
	else
		echo "$package not successfully installed" >>packagesInstalles
	fi
}

function downloadaPackage() {
	sudo apt install $package -y >>a.log
	packageStatus
}

sudo apt update -y >trash
sudo apt upgrade -y >trash

while IFS= read -r package; do
	downloadaPackage
done <packages
