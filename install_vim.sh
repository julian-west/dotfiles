#!/usr/bin

# installs vim plugins

# install Vundle
echo "Installing Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

echo "Installing ripgrep"
sudo apt-get install ripgrep

echo "Installing plugins..."
vim +PluginInstall +qall

