!-----------------------------------------!
! Colors                                  !
!-----------------------------------------!
*background: #0e0021
!*background: #292b2e
!xterm*background: #292b2e
URxvt*background: #292b2e

*foreground:        #b2b2b2

*cursorColor:       #a45bad
*colorUL:           #e3dedd
*underlineColor:    #e3dedd
!black
*color0:	#0a0814
*color8:	#100a14
!red
*color1:	#ce537a
*color9:	#f2241f
!green
*color2:	#2d9574
*color10:	#86dc2f
!*color10:	#67b11d
!yellow
*color3:	#b1951d
*color11:	#dc752f
!blue
*color4:	#5d4d7a
*color12:	#4f97d7
!purple
*color5:	#a31db1
*color13:	#c56ec3
!cyan
*color6:	#2aa1ae
*color14:	#28def0
!white
*color7:	#545557
*color15:	#cbc1d5

!-----------------------------------------!
! urxvt                                   !
!-----------------------------------------!

urxvt*.perl-lib: /usr/lib/urxvt/perl
urxvt*.perl-ext-common: default,matcher,clipboard
urxvt*.perl-matcher: 1
urxvt*.matcher-button: 3
urxvt*.url-launcher: firefox
!urxvt*.matcher.button: 1
!urxvt*.matcher.pattern.1: \\bwww\\.[\\w-]\\.[\\w./?&@#-]*[\\w/-]

! letter spacing
urxvt*.letterSpace: -1

urxvt*.dynamicColors: on
urxvt*.urgentOnBell: true

! cursor
urxvt*.cursorBlink: true
urxvt*.cursorUnderline: 0

! scrollbar
urxvt*.scrollBar: false

! border
urxvt*.borderLess: false
urxvt*.internalBorder: 5
urxvt*.externalBorder: 0

! true transparency
urxvt*.depth: 32
urxvt*.background: [40]#303030

! font
!urxvt*.font: xft:Droid Sans Mono for Powerline:size=15:antialias=true
urxvt*.font: xft:Fantasque Sans Mono:style=Regular:size=17:antialias=true
urxvt*.boldFont: xft:Fantasque Sans Mono:style=Bold:size=17:antialias=true
urxvt*.italicFont: xft:Fantasque Sans Mono:style=Italic:size=17:antialias=true
urxvt*.boldItalicFont: xft:Fantasque Sans Mono:style=Bold Italic:size=17:antialias=true
!urxvt*.font: xft:Inconsolata:size=16:antialias=true
!urxvt*.boldFont: xft:Inconsolata:style=bold:size=16:antialias=true
!urxvt*.italicFont: xft:Inconsolata:style=italic:size=16:antialias=true
!urxvt*.boldItalicFont: xft:Inconsolata:style=bolditalic:size=16:antialias=true
