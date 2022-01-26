# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# fix permissions error
ZSH_DISABLE_COMPFIX=true

# need to disable in order for exa ls alias to work
DISABLE_LS_COLORS="true"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
    fzf
    zsh-z
    dotenv
    history
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# aliases
alias python=python3
alias gt="starship toggle gcloud disabled" # toggle gcloud info on the prompt
alias gs="git status"

if command -v exa &> /dev/null
then
    alias ll="exa -l -g --icons"
    alias ls="exa --icons"
    alias lla="ll -a"
    alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"
fi

alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

#yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYENV=true

export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# FZF settings
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore --files -g "!.git/"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# use starship prompt
eval "$(starship init zsh)"
