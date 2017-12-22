# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
#ZSH_THEME="pure"

#turn on comments with # in shell
setopt interactivecomments

### ALIASES
alias zshconfig="vi ~/.zshrc_node"
alias zshconfig_global="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias sshconfig="vi ~/.ssh/config"
alias lh="du -ahd1 | sort -h"
#lhs() { for list in $(ls -a | sed 's/\ /\\ /g'); do du -hs $list; done | sort -hr }
#alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ix="curl -s -F 'f:1=<-' ix.io"
up () {curl -F "c=@${1:--}" https://ptpb.pw/}
alias vi="vim"
alias sudo="sudo "
alias installed="pacman -Qqen"
alias chrome="google-chrome-stable"
alias tmux="tmux -2"
#alias neofetch="neofetch --crop_mode fit --image_size 33% --image ~/.config/neofetch/archlinux.png --colors 0 7 7 7 7 7"
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
alias startx="ssh-agent startx"

### System clean tools

dupkg() { expac '%m\t%n' | sort -h | awk '{cmd = "numfmt --to=si "$1; cmd | getline n; close(cmd); print n, $2}' }
dupkg_ex() { expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel | sort)) | sort -n }

### EXPORTS
export EDITOR='vim'
export VISUAL='vim'
export BROWSER='google-chrome-stable'
export POWERLINE_CONFIG_COMMAND='powerline-config'
export PAGER='most'

if [[ $TERM == xterm-termite ]] && [[ -z "$SSH_CLIENT" ]] || [[ -z "$SSH_TTY" ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

### ZSHRC NODE
source ~/.zshrc_node

### ZSH CONF
autoload -U zmv
plugins=(git python colored-man-pages colorize sprunge web-search)
source $ZSH/oh-my-zsh.sh
zsh-syntax-highlighting-dir=$(find /usr -name zsh-syntax-highlighting.zsh 2>/dev/null)
source $zsh-syntax-highlighting-dir
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

### PURE PROMPT
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit; promptinit
prompt pure
