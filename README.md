mkdir ~/.vim/tmp
mkdir ~/.vim/backup
cp -r colors ~/.vim
cp vimrc to ~/.vimrc

# compile vundle referenced from https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#vi ~/.vim/vimrc and run PluginInstall

#compile ycmd referenced from
http://valloric.github.io/YouCompleteMe/#linux-64-bit
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
#vi ~/.vim/vimrc and run PluginInstall

