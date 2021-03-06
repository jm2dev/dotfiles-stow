# Lines configured by zsh-newuser-install
echo "========================================="
echo "Check git user! --------> git config -l"
echo "Check kubectl config! --> ls -lha ~/.kube"
echo "========================================="

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

#source /home/jm/src/github/zsh-git-prompt/zshrc.sh
#PROMPT='%B%n@%m % :: %~ %b$(git_super_status)%# '
source $HOME/src/github/polyglot/polyglot.sh

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
eval "$(rbenv init -)"

export GOPATH=$HOME/src/golang
export PATH=$PATH:$GOPATH/bin

# Added by n-install (see http://git.io/n-install-repo).
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src/python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

# pip3 install --user virtualenvwrapper
if [[ -f $HOME/.local/bin/virtualenvwrapper.sh ]]; then
	  source $HOME/.local/bin/virtualenvwrapper.sh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -C $HOME/bin/terraform terraform

if [[ -f $HOME/.virtualenvs/awsclip2/bin/aws_zsh_completer.sh ]]; then
    source $HOME/.virtualenvs/awsclip2/bin/aws_zsh_completer.sh
fi

# it must be run at the end.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

