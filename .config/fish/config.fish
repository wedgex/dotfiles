alias be="bundle exec"
alias vim="nvim"

set -x TERM "xterm-256color"
set -x EDITOR "vim"

set -x PATH $PATH:/usr/local/bin:"$HOME/.bin"

if test -e ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
end

if test -e ~/.asdf/completions/asdf.fish
  source ~/.asdf/completions/asdf.fish
end

