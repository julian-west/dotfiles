# Dotfiles

Dotfile Configurations 

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

**Install vim**

Install vim with personalised config and plugins. Also installs `fzf` for commandline searching.

```
bash install_vim.sh
```

**Build symlinks**

Symlink dotfiles configurations to the dotfiles in the $HOME directory using stow

```
# install macos
brew install stow

# install ubuntu
sudo apt-get update && install stow

# create symlinks
stow tmux zsh nvim fish #etc.
```

Note: make sure you 'source' each dotfile to make sure changes have been make

## Limitations

Currently does not install other utilies such as:
- pyenv
- tmux

Can be a bit buggy, make sure all dotfiles have been 'sourced' to make sure the changes have been made
