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

rm -rf Téléchargments && mkdir Downloads

mkdir ~/.config/
rm -rf ~/.config/i3 ~/.config/nvim ~/.Xresources
rm ~/.config/nvim/init.vim ~/.config/i3/config
ln -s ~/.dot-config/i3 ~/.config/
ln -s ~/.dot-config/nvim ~/.config/
ln -s ~/.dot-config/.Xresources ~/
xrdb -load ~/.Xresources
