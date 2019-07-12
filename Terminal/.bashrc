#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

COLOUR_NONE='\e[0m'
COLOUR_WHITE='\e[1;37m'
COLOUR_BLACK='\e[0;30m'
COLOUR_BLUE='\e[0;34m'
COLOUR_BRIGHT_BLUE='\e[1;34m'
COLOUR_GREEN='\e[0;32m'
COLOUR_BRIGHT_GREEN='\e[1;32m'
COLOUR_CYAN='\e[0;36m'
COLOUR_BRIGHT_CYAN='\e[1;36m'
COLOUR_RED='\e[0;31m'
COLOUR_BRIGHT_RED='\e[1;31m'
COLOUR_MAGENTA='\e[0;35m'
COLOUR_YELLOW='\e[0;33m'
COLOUR_BRIGHT_YELLOW='\e[1;33m'
COLOUR_GRAY='\e[0;30m'
COLOUR_BRIGHT_GRAY='\e[0;37m'

get_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

#Default
#PS1="[\u@\h \W]\$"
PS1="\[${COLOUR_BRIGHT_RED}\]\u@\h \[${COLOUR_BRIGHT_MAGENTA}\]\w \[${COLOUR_BRIGHT_YELLOW}\]\$(get_branch)\[${COLOUR_NONE}\]> "


unset COLOUR_NONE
unset COLOUR_WHITE
unset COLOUR_BLACK
unset COLOUR_BLUE
unset COLOUR_BRIGHT_BLUE
unset COLOUR_GREEN
unset COLOUR_BRIGHT_GREEN
unset COLOUR_CYAN
unset COLOUR_BRIGHT_CYAN
unset COLOUR_RED
unset COLOUR_BRIGHT_RED
unset COLOUR_MAGENTA
unset COLOUR_YELLOW
unset COLOUR_BRIGHT_YELLOW
unset COLOUR_GRAY
unset COLOUR_BRIGHT_GRAY
