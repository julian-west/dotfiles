# Dotfiles

Dotfile Configurations

![dotfiles screenshot](images/nvim-2023-screenshot.png)

Currently using tmux + [fish](https://fishshell.com/) + [Starship prompt](https://starship.rs/) + neovim.

## Context

The configurations in this repository are unlikely to be suitable for every developer.

I don't recommend you blindly install/overwrite your current configurations with this files. Instead, read the config files and take the bits you like, line by line.

I am a Data Engineer primarily working with Python and using cloud providers such as GCP and AWS. These dotfiles reflect my daily Python workflow working in fish + tmux + neovim from the command line.

I use `pyenv` for Python version and virtual environment management and [FZF](https://github.com/junegunn/fzf) for fuzzy finding on the command line.

## NeoVim Setup

See `/nvim/.config/nvim/lua/julianwest/plugins.lua` for full list of plugins

- [packer.nvim](https://github.com/wbthomason/packer.nvim) - Plugin Manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for neovim coded in Lua
- [lspsaga.nvim](https://github.com/tami5/lspsaga.nvim) - A light-weight LSP plugin based on Neovim built-in LSP with highly a performant UI
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [Nightfly color scheme](https://github.com/bluz71/vim-nightfly-colors)

## Fish (shell)

I use [fish](https://fishshell.com/) for my command line.

- [Fish shell](https://fishshell.com/) - shell with great out-of-the-box functionality (syntax highlighting and autocomplete)
- [Starship (prompt)](https://starship.rs/) - Minimal cross-shell prompt (see starship.toml for config)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Exa](https://the.exa.website/) - `ls` replacement

---

## How to Use (MacOS)

### Clone Repo

```
git clone https://github.com/julian-west/dotfiles.git
```

### Prerequisites
**[Homebrew](https://brew.sh/)**

```shell
# install Homebrew from command line
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


**[FZF](https://github.com/junegunn/fzf) -- command line fuzzy finder**


```shell
# install directly from GitHub
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install
```

**Neovim**

```shell
# install neovim from Homebrew
brew install neovim
```

**[Packer](https://github.com/wbthomason/packer.nvim) -- Neovim Plugin Manager**

```shell
# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

**[Stow](https://www.gnu.org/software/stow/)**

I use `stow` to create symlinks between config files in my dotfiles directory and `$HOME` directory.

I have organised the directory structure in this repo so you can pick and choose which configs you wish to use.

```
# create symlinks between dotfiles and master configs
# e.g. create symlink for tmux config only
stow tmux

# or stow all folders
stow tmux zsh nvim fish git starship
```

## Limitations

I mainly use MacOS. I have not tested and debugged the configurations for other operating systems.

The `brewfile` contains the kitchen sink -- might make a more 'minimal' version in the future. Don't blindly install everything as it is probably not all needed

## Resources

These dotfile configuration have been heavily inspired by the following resources. I highly recommend you check them out:

- [Devsalife dotfiles + YouTube channel](https://github.com/craftzdog/dotfiles-public)
- [Chris Toomey - Tmux Course](https://thoughtbot.com/upcase/tmux)
