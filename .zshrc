# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#zshrc node specific
source ~/.zshrc_node

# Set name of the theme to load.
ZSH_THEME="agnoster"

#turn on comments with # in shell
setopt interactivecomments

#aliases
alias zshconfig="vi ~/.zshrc_node"
alias zshconfig_global="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias sshconfig="vi ~/.ssh/config"
alias lh="du -hsc * | sort -hr"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ix="curl -s -F 'f:1=<-' ix.io"
alias upics="curl -F c=@- https://ptpb.pw <"
alias vi="vim"
alias sudo="sudo "

#exports
export EDITOR='vim'
#deactivate gaskpass
unset SSH_ASKPASS
#man colors
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#zshconf
plugins=(git python)
source $ZSH/oh-my-zsh.sh
