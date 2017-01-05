#motd
cat ~/.config/motd

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
alias lh="du -ahd1 | sort -h"
#lhs() { for list in $(ls -a | sed 's/\ /\\ /g'); do du -hs $list; done | sort -hr }
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ix="curl -s -F 'f:1=<-' ix.io"
up () { curl -F "c=@${1:--}" http://ptpb.pw/ }
alias vi="vim"
alias sudo="sudo "
alias installed="pacman -Qqen"
alias chrome="google-chrome-stable"
alias tmux="tmux -2"
alias neofetch="neofetch --crop_mode fit --image_size 33% --image ~/.config/neofetch/archlinux.png --colors 3 10 7 4 10 10"
bak() { cp "$1" "$1.bak" }
chromeapp() { google-chrome-stable --app=$1 }
extract() {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)	tar xvjf $1    ;;
           *.tar.gz)	tar xvzf $1    ;;
	   *.tar.xz)	tar xJf $1     ;;
           *.bz2)	bunzip2 $1     ;;
           *.rar)	unrar x $1     ;;
           *.gz)	gunzip $1      ;;
           *.tar)	tar xvf $1     ;;
           *.tbz2)	tar xvjf $1    ;;
           *.tgz)	tar xvzf $1    ;;
           *.zip)	unzip $1       ;;
           *.Z)		uncompress $1  ;;
           *.7z)	7z x $1        ;;
           *)		echo "Unable to extract '$1'" ;;
       esac
   else
       echo "'$1' is not a valid file"
   fi
}
alias startx="ssh-add;startx"

#exports
export EDITOR='vim'
export VISUAL='vim'
export BROWSER='google-chrome-stable'
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
autoload -U zmv
plugins=(git python)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
