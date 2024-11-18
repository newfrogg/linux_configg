alias vim="vim -O"
alias vi="vim"
alias v="vim"
alias vm="v ~/.mycshrc"
alias vs="v ~/.cshrc"
alias vdf="vimdiff"
alias grep='grep --color'
alias lg='ll | grep'

alias ll="ls -rhlt"
alias l="ll"
alias b="cd .."
alias rl="readlink -f"

function cd {
	builtin cd $1
	ll
}



