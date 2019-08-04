#!/bin/csh
# This is the standard initial .cshrc file for new accounts

limit coredumpsize 0


# Set up PATH, MANPATH, and TEXINPUTS

if ( -e /usr/cluster/bin/setpath ) then
    source /usr/cluster/bin/setpath
endif

setenv TERM "xterm-256color"
set MODULEPATH = $MODULEPATH':'$HOME/privatemodules
setenv MODULEPATH $MODULEPATH
source $HOME/.cshrc.mine

# Source alias
if ( -e ~/.alias ) then
	source ~/.alias
endif

# Setup LSF
setenv LBS_BASE_SYSTEM LBS_LSF
source /tools/support/lsf/conf/cshrc.lsf

set cdpath = ~
setenv OPENWINHOME /usr/openwin

# Make autocompletion case insensitive
set autolist = ambiguous
set complete = enhance

mask 022
#eval `dircolors -c ~/solarized/dircolors-solarized/dircolors.256dark`
eval `dircolors -c ~/.dircolors`

if ($?prompt) then
	set history = 100
	set prompt="[%n@%m:%B%c%b]%# "
	alias cd 'chdir \!* && set prompt="[%n@%m:%B%c%b]%# "'	
#	set prompt="`hostname | sed 's/.EECS.Berkeley.EDU//'` \!% "
	set filec
	set notify
	set ignoreeof
	alias a alias
	alias h history
	alias so source
	alias ts 'set noglob; eval `tset -s \!*`; unset noglob'
	alias . suspend
	alias xs 'set noglob; eval `resize`'
	setenv PAGER /bin/more
	setenv EXINIT "set ai"
endif

#
# Uncomment the "setxkbmap" command below to swap Ctrl and Caps Lock keys.
# More detailed information can be found on Linux hosts in the file:
# /usr/X11R6/lib/X11/xkb/rules/xorg.lst 
#
#setxkbmap -option ctrl:swapcaps

if ( $?prompt && -x /usr/bin/git && -x $HOME/dotfiles/gitprompt.pl ) then
    alias precmd $HOME/dotfiles/gitprompt.pl
endif

