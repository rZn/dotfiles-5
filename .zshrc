# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster"
#DEFAULT_USER="user"

#turn on comments with # in shell
setopt interactivecomments

#aliases
alias zshconfig="vi ~/.zshrc_node"
alias zshconfig_global="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias sshconfig="vi ~/.ssh/config"
alias lh="du -hsc * | sort -hr"
alias lha="du -hsc .* | sort -hr"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ix="curl -s -F 'f:1=<-' ix.io"
alias upics="curl -F c=@- https://ptpb.pw <"
alias vi="vim"
alias sudo="sudo "
alias installed="pacman -Qqen"
alias tmux="tmux -2"

#exports
export EDITOR='vim'
export POWERLINE_CONFIG_COMMAND=/usr/bin/powerline-config
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
#ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

#zshrc node specific
source ~/.zshrc_node

#zshconf
plugins=(git python)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
