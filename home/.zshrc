ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git ruby)
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# aliases
alias gad="git add"
alias gst="git status"
alias gpl="git pull"
alias gpu="git push"

alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt
source $ZSH/oh-my-zsh.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

if [ -f ~/.zsh_profile ]; then
  . ~/.zsh_profile
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Speed up git completion
# http://talkings.org/post/5236392664/zsh-and-slow-git-completion
__git_files () {
  _wanted files expl 'local files' _files
}

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
