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

print_colours () {
    printf "${COLOUR_NONE}None\n${COLOUR_NONE}"
    printf "${COLOUR_WHITE}White\n${COLOUR_NONE}"
    printf "${COLOUR_BLACK}Black\n${COLOUR_NONE}"
    printf "${COLOUR_BLUE}Blue\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_BLUE}BrightBlue\n${COLOUR_NONE}"
    printf "${COLOUR_GREEN}Green\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_GREEN}BrightGreen\n${COLOUR_NONE}"
    printf "${COLOUR_CYAN}Cyan\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_CYAN}BrightCyan\n${COLOUR_NONE}"
    printf "${COLOUR_RED}Red\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_RED}BrightRed\n${COLOUR_NONE}"
    printf "${COLOUR_MAGENTA}Magenta\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_MAGENTA}BrightMagenta\n${COLOUR_NONE}"
    printf "${COLOUR_YELLOW}Yellow\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_YELLOW}BrightYellow\n${COLOUR_NONE}"
    printf "${COLOUR_GRAY}Gray\n${COLOUR_NONE}"
    printf "${COLOUR_BRIGHT_GRAY}BrightGray\n${COLOUR_NONE}"
}

print_colours

get_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

#Default
#PS1="[\u@\h \W]\$"
PS1="\[${COLOUR_BRIGHT_RED}\]\u \[${COLOUR_BRIGHT_MAGENTA}\]\w \[${COLOUR_BRIGHT_YELLOW}\]\$(get_branch)\[${COLOUR_NONE}\]> "
