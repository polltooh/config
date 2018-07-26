# colors!
green="\[\033[0;32m\]"
red="\[\033[0;31m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"
#reset=$pwd
# Change command prompt
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$red \W $ $reset\n"
