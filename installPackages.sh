#!/bin/bash

logs="$HOME/.logs/"

PACKAGES=(
	"curl"
	"git"
	"vim"
	"htop"
	"wget"
	"tree"
	"python3"
	"python3-pip"
	"build-essential"
	"unzip"
)

update_package_list() {
	echo "Updating package list..."
	sudo apt update -y
}

upgrade_packages() {
	echo "Upgrading installed packages..."
	sudo apt upgrade -y
}

install_packages() {
	echo "Installing packages..."
	for package in "${PACKAGES[@]}"; do
		if [ ! -d "$HOME/.logs" ]; then
			mkdir -p "$HOME/.logs"
		fi
		sudo apt install -y "$package" &>>"$logs/$PACKAGES.log"
		echo "Installing $package..."
	done
}

cleanup() {
	echo "Cleaning up unnecessary files..."
	sudo apt autoremove -y
	sudo apt clean
}

main() {
	update_package_list
	upgrade_packages
	install_packages
	cleanup
	echo "All tasks completed successfully!"
}

main
