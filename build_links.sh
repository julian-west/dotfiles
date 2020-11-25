#!/bin/bash

# script to createsymlinks from the home directory

FILES=".bashrc .vimrc .zshrc .tmux.conf"

echo $PWD

for file in $FILES; do
	echo "creating symlink to $file in home directory"
	ln -sfn $PWD/$file $HOME/$file
done
