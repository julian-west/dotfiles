set fish_greeting ""

set -gx TERM xterm-256color

if type -q exa
  alias ll "exa -l -g --icons"
  alias ls "exa --icons"
  alias lla "ll -a"
end

