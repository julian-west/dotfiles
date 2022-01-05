# Dotfiles

Dotfile Configurations 

Currently using n(eo)vim and zsh as main editor/terminal combo.

## Context

The configurations in this repository are unlikely to be suitable for every developer. I am a ML Engineer primarily working with Python and using cloud providers such as GCP and AWS. These dotfiles reflect my daily Python workflow working in zsh + tmux + neovim from the command line.

I use `pyenv` for Python version and virtual environment management and [FZF](https://github.com/junegunn/fzf) for fuzzy finding on the command line.

## Getting Started (MacOS)

**Clone Repo**

```
git clone https://github.com/julian-west/dotfiles.git
```

**Install brew**

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Install FZF**

I download and install FZF directly from `git`

```shell
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

**Install command line programs in the Brewfile**

> Caution: don't blindy install everything. Better approach to use a more minimal brewfile

```
brew bundle
```

**Install zsh**

Install `zsh` from git, install plugins and set as primary shell

```
bash install_zsh.sh
```

**Build symlinks**

Symlink dotfiles configurations to the dotfiles in the $HOME directory using stow

```
# create symlinks between dotfiles and master configs
stow tmux zsh nvim fish git #etc.
```

Note: make sure you 'source' each dotfile to make sure changes have been made

## Limitations

Automation and configurations mainly aimed at MacOS. Need to test and debug for linux distros.

Brewfile contains the kitchen sink -- might make a more 'minimal' version in the future. Don't blindly install everything as it is probably not all needed

The Brewfile does not support version lock syntax and will download the latest version of each package.

## Housekeeping

Things still to fix/tidy up since migration to neovim.
- improve automation of installation scripts
- fish configuration still needs finishing (currently still using zsh as main terminal)
