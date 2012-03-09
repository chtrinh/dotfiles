ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git ruby)
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# aliases
alias gad="git add"
alias gst="git status"
alias gpl="git pull"
alias gpu="git push"
alias mix="cd ~/Development/mixamo/webapp/"

alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

if [ -f ~/.zsh_profile ]; then
  . ~/.zsh_profile
fi

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
