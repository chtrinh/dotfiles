ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git ruby osx rvm rails rails3 bundler gem)

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# aliases
alias gad="git add"
alias gst="git status"
alias gpl="git pull"
alias gpu="git push"

alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt
source $ZSH/oh-my-zsh.sh
unsetopt correct_all # disable auto-correct

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

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

cmdfu(){ wget -qO - "http://www.commandlinefu.com/commands/matching/$@/$(echo -n "$@" | openssl base64)/plaintext"; }

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

rvm use @global

