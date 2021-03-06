# http://tutos.readthedocs.io/en/latest/source/Arch.html
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
#export EDITOR=/usr/bin/vim

# Coloring less command
#export LESS=-R
#export LESS_TERMCAP_me=$(printf '\e[0m')
#export LESS_TERMCAP_se=$(printf '\e[0m')
#export LESS_TERMCAP_ue=$(printf '\e[0m')
#export LESS_TERMCAP_mb=$(printf '\e[1;32m')
#export LESS_TERMCAP_md=$(printf '\e[1;34m')
#export LESS_TERMCAP_us=$(printf '\e[1;32m')
#export LESS_TERMCAP_so=$(printf '\e[1;44;1m')

alias ec='emacsclient '
alias ecc='emacsclient -c'
alias et='emacsclient -t'
alias bateria='grep POWER_SUPPLY_CAPACITY /sys/class/power_supply/BAT0/uevent'
#alias bloquea='i3lock -i ~/Pictures/bloquea/selected'
alias bloquea='/home/jm/src/github/i3lock-multimonitor-debian/lock'
alias colores='xrdb -I$HOME ~/.Xresources'
alias cromito='chromium --force-device-scale-factor=1.5'
alias diferencias='git difftool --no-prompt --extcmd icdiff "$@"'
alias mkvirtualenv3='mkvirtualenv -p /usr/bin/python3'
alias teclado='setxkbmap -layout us -variant altgr-intl -option compose:rctrl -option ctrl:nocaps'
alias adfsnonproduction='eval `aws-adfs-tool login -u j.martinez-carrasco -r Klarna_ADFS_blackjack -a klarna-non-production`'
alias adfsproduction='eval `aws-adfs-tool login -u j.martinez-carrasco -r Klarna_ADFS_blackjack -a klarna-production`'
