if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

[ -n "$XTERM_VERSION" ] && transset -a >/dev/null

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth
export NNTPSERVER='news.epita.fr'
export PAGER=most

export GOPATH="$HOME/go"
alias l='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias reload='source ~/.bashrc'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias ddsqfqsf='df -h'                          # human-readable sizes
alias free='fdfree -m'                      # show sizes in MB
alias np='nano PKGBUILD'
alias slip='echo Caleçon'
alias rm='rm -rf -i'
alias bright='xrandr --output LVDS --brightness '
alias locate='find / | grep'
alias slrn='slrn -f ~/.jnewsrc'

alias padon='synclient TouchpadOff=0'
alias padoff='synclient TouchpadOff=1'
alias clang='clang -Wall -Wextra -std=c99 -O2'
alias jogsoul='~/jogsoul/jogsoul.pl ~/jogsoul/jogsoul.conf'
alias taille='~/tp/taille'
alias connect='ssh yayg@91.121.83.195'
alias lock='cmatrix -s && zlock'
alias pdf='evince *pdf'
alias minecraft='java -jar ~/Minecraft.jar'
# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# prompt
PS1="\[\e[00;37m\]{\[\e[0m\]\[\e[00;33m\]\$?\[\e[0m\]\[\e[00;37m\]}[\[\e[0m\]\[\e[00;31m\]\T\[\e[0m\]\[\e[00;37m\]][\[\e[0m\]\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;36m\]\h\[\e[0m\]\[\e[00;37m\] \W]\\$ \[\e[0m\]"
# PS1='[$?][\u@\h \W]\$ '
PATH=~/bin:~/.cabal/bin:$PATH
