#!/bin/bash

# script to install zsh

# install zsh
echo "Installing zsh..."
sudo apt install zsh

# install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# make zsh the default
chsh -s $(which zsh)

echo "Installations complete"

