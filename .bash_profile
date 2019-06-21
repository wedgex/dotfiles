Color_Off="\[\033[0m\]"       # Text Reset
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
On_Red="\[\033[41m\]"         # Red
PathShort="\w"

parse_git_branch() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}

export PS1="$On_Red\u$Color_Off $Green$PathShort $Yellow\$(parse_git_branch)$Color_Off ⚡  "
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -s /Users/hunter/.nvm/nvm.sh ]] && . /Users/hunter/.nvm/nvm.sh # This loads NVM

