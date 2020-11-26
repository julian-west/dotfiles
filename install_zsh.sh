#!/bin/bash

# script to install zsh

# install zsh
echo "Installing zsh..."
sudo apt install zsh

# install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# install zsh-syntax-highlighting
echo "Installing plugins..."

echo "Installing syntax highlighting"
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting

echo "Installing autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions

echo "Installations complete"

source .zshrc


# make zsh the default
sudo chsh -s $(which zsh)
