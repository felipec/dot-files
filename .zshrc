source ~/.aliases

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000

setopt autocd
setopt extendedglob
setopt nomatch

autoload -U compinit && compinit

PS1='%F{blue}%B%m%b%f %F{white}%~%f %F{green}%#%f '

bindkey -e
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

precmd () {
	# Change the window title of X terminals
	# http://tldp.org/HOWTO/Xterm-Title-3.html
	print -Pn "\e]2;%2~\a"
}
