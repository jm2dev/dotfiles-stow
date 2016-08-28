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
PROMPT='%B%n@%m% :: ~%b$(git_super_status) %# '

alias et='emacsclient -t'
alias ec='emacsclient -c'


