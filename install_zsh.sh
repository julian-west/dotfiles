#!/usr/bin/env bash

# script to install zsh

set -e

DIR=$PWD

echo "Checking for ZSH installation"
if ! command -v zsh &> /dev/null
then
	echo "Installing zsh..."
	sudo apt -y install zsh
else
	echo "zsh already installed"
fi

# install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended


# install zsh-syntax-highlighting
echo "Installing plugins..."

echo "Installing syntax highlighting"
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting

echo "Installing autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions

echo "Installations complete"

cd $DIR

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
