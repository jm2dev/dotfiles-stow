# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd notify
unsetopt beep extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/jm/src/github/zsh-git-prompt/zshrc.sh
PROMPT='%B%n@%m % :: %~ %b$(git_super_status)%# '

alias et='emacsclient -t'
alias ec='emacsclient '
alias ecc='emacsclient -c'
alias bloquea='i3lock -c 889da6'
alias diferencias='git difftool --no-prompt --extcmd icdiff "$@"'

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#export GOPATH=$HOME/src/golang

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src/python
#fedora
#source /usr/bin/virtualenvwrapper.sh
#debian
source /etc/bash_completion.d/virtualenvwrapper
