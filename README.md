# Dotfiles

Dotfile Configurations 

Currently using n(eo)vim and zsh as main editor/terminal combo.

## Getting Started

**Clone Repo**

```
git clone https://github.com/julian-west/dotfiles.git
```

**Install zsh**

Install `zsh`, install plugins and set as primary shell

```
bash install_zsh.sh
```

**Build symlinks**

Symlink dotfiles configurations to the dotfiles in the $HOME directory using stow

```
# install macos
brew install stow

# install ubuntu
sudo apt-get update && install stow

# create symlinks
stow tmux zsh nvim fish git #etc.
```

Note: make sure you 'source' each dotfile to make sure changes have been make

## Limitations

Currently does not install other utilies such as:
- pyenv
- tmux
- other command line applications (e.g. brew, stow etc..)


## Housekeeping

Things still to fix/tidy up since migration to neovim.
- improve automation of installation scripts
- fish configuration still needs finishing (currently still using zsh as main terminal)
