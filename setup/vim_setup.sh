#!/bin/bash
mkdir ~/.vim
mkdir ~/.vim/tmp
mkdir ~/.vim/backup
cp -r ../vim/colors ~/.vim
cp ../vim/vimrc ~/.vimrc
mkdir ~/.vim/bundle
vim -c 'PluginInstall' -c 'qa!'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt install build-essential cmake python3-dev
python3 ~/.vim/bundle/YouCompleteMe install.py --clang-completer
vim -c 'PluginInstall' -c 'qa!'
