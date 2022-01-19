if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

set -gx TERM xterm-256color

if type -q exa
  alias ll "exa -l -g --icons"
  alias ls "exa --icons"
  alias lla "ll -a"
end

starship init fish | source
