# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	      . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias et='emacsclient -t'
alias ec='emacsclient '
alias ecc='emacsclient -c'
alias bloquea='i3lock -i ~/Pictures/bloquea/selected'
alias diferencias='git difftool --no-prompt --extcmd icdiff "$@"'
alias colores='xrdb -I$HOME ~/.Xresources'
alias mkvirtualenv3='mkvirtualenv -p /usr/bin/python3'
alias bateria='grep POWER_SUPPLY_CAPACITY /sys/class/power_supply/BAT0/uevent'
alias teclado='setxkbmap -layout us -variant altgr-intl -option compose:rctrl -option ctrl:nocaps'
alias ll='ls --color=auto -lh'
alias fixsbt='export TERM=xterm-color'
