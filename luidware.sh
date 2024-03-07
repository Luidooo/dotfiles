#   !usr/bin/bash

sudo apt update -y
sudo apt upgrade -y


#git
sudo apt-get install git-all
cp dotfiles/.gitconfig ~/.gitconfig

git clone https://github.com/Luidooo/dotfiles.git


#vim
sudo apt install vim -y
cp dotfiles/.vimrc ~/.vimrc
source ~/.vimrc

#google
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install

#zoxide
sudo apt install zoxide

#fzf
sudo apt install fzf

#zsh
sudo apt install zsh -y
cp dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

#docker

#personal files

#linguagens de uso

#neovim config

#pasta de apps


