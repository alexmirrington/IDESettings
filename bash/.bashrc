# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export CLICOLOR=1

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
COLOUR_BRIGHT_MAGENTA='\e[1;35m'
COLOUR_YELLOW='\e[0;33m'
COLOUR_BRIGHT_YELLOW='\e[1;33m'
COLOUR_GRAY='\e[0;30m'
COLOUR_BRIGHT_GRAY='\e[0;37m'

function get_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        venv=""
    fi
    [[ -n "${venv}" ]] && echo "(${venv}) "
}

# Disable the default virtualenv prompt change
export VIRTUAL_ENV_DISABLE_PROMPT=1

BRANCH="\$(get_branch)"
VENV_INFO="\$(virtualenv_info)"

#Default
#PS1="[\u@\h \W]\$"
export PS1="\[${COLOUR_RED}\]\u@\h \[${COLOUR_MAGENTA}\]\w \[${COLOUR_YELLOW}\]${BRANCH}\[${COLOUR_GREEN}\]${VENV_INFO}\[${COLOUR_NONE}\]> "

unset BRANCH
unset VENV_INFO

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
unset COLOUR_BRIGHT_MAGENTA
unset COLOUR_YELLOW
unset COLOUR_BRIGHT_YELLOW
unset COLOUR_GRAY
unset COLOUR_BRIGHT_GRAY

