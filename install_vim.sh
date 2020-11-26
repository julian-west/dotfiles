#!/usr/bin

# installs vim plugins

# install Vundle
echo "Installing Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Installing plugins..."
vim +PluginInstall +qall

