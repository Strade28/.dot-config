#!/bin/sh
sudo apt-get install dfc htop vim i3-wm i3status dmenu rxvt-unicode-256color zsh curl wget git mpv golang-go

# NEOVIM
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
pip3 install --user --upgrade pynvim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


### Chnage the default "Téléchargement" to "Downloads"

rmdir Téléchargments && mkdir Downloads
