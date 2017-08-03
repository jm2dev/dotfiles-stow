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

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#export GOPATH=$HOME/src/golang

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src/python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

# virtualenvwrapper
#fedora
if [[ -f /usr/bin/virtualenvwrapper.sh ]]; then
	  source /usr/bin/virtualenvwrapper.sh
fi
#debian
if [[ -f /etc/bash_completion.d/virtualenvwrapper ]]; then
	source /etc/bash_completion.d/virtualenvwrapper
fi

# it must be run at the end.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
