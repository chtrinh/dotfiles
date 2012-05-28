# Load other bash files
if [ -a ~/.bashrc ]; then
	source ~/.bashrc
fi

#pdsh
export pdsh_rcmd_type=ssh

# Bash aliases
if [ -e ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Brew Bash Completion
if [[ $uname == 'Darwin' ]]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
	  . `brew --prefix`/etc/bash_completion
  fi
fi

# Editors
export VISUAL="mate -w"
export EDITOR=vim
export GIT_EDITOR=vim

# PS1 Variable setup
NONE="$(tput setaf 10)"
WHITE="$(tput setaf 7)"
RED="$(tput setaf 1)"
HC="$(tput setaf 5)"
YELLOW="$(tput setaf 3)"

# Git branch in PS1, cross platform version
function parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# set PS1
#export PS1="\[$RED\][\[$WHITE\]\u\[$RED\]][\[$HC\]\h\[$RED\]][\[$WHITE\]\t\[$RED\]]\n[:\[$WHITE\]\w\[$RED:\]]\[$YELLOW\]\$(parse_git_branch)\[$WHITE\]\n:]\[$NONE\]"
export PS1="\[$RED\][\[$WHITE\]\u@\h\[$RED\]] \[$HC\]\w \[$YELLOW\]\$(parse_git_branch)\[$WHITE\] > "

# Java 
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"

# PATH
export BREW_HOME="/usr/local/bin:/usr/local/sbin"
export LOCAL_BIN=~/.local/bin:~/.bin
export RUBY_BIN="/usr/local/Cellar/ruby/1.9.2-p0/bin"
export PATH=$LOCAL_BIN:$BREW_HOME:$RUBY_BIN:$GWT_HOME:$DEPOT_TOOLS:$PATH

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  

rvm use @global
