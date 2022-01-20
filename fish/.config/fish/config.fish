if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

set -gx TERM xterm-256color
set -gx EDITOR nvim

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if type -q exa
  alias ll "exa -l -g --icons"
  alias ls "exa --icons"
  alias lla "ll -a"
end

# list z directories and scores
alias zl "z -l"

# toggle gcloud info on the prompt
alias gt "starship toggle gcloud disabled"

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

starship init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.fish.inc' ]; . '$HOME/google-cloud-sdk/path.fish.inc'; end
