#!/bin/bash

# script to createsymlinks from the home directory

FILES=".bashrc .vimrc .zshrc"

echo $PWD

for file in $FILES; do
	echo "creating symlink to $file in home directory"
	ln -s $PWD/$file $HOME/$file
done
