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

# needs glyphs
#source /home/jm/src/github/zsh-git-prompt/zshrc.sh
#PROMPT='%B%n@%m % :: %~ %b$(git_super_status)%# '
source $HOME/src/github/polyglot/polyglot.sh

export GOPATH=$HOME/src/go; [[ :$PATH: == *":$GOPATH/bin:"* ]] || PATH+=":$GOPATH/bin"

# Added by n-install (see http://git.io/n-install-repo).
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

export RBENV="$HOME/.rbenv"; [[ :$PATH: == *":$RBENV/bin:"* ]] || PATH+=":$HOME/.rbenv/bin"
eval "$(rbenv init -)"
source $HOME/.rbenv/completions/rbenv.zsh

export CSPATH="$HOME/.conscript"; [[ :$PATH: == *":CSPATH/bin:"* ]] || PATH+=":$CSPATH/bin"

# remove duplicates in $PATH
typeset -U path

# it must be run at the end.
# debian
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# archlinux
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

