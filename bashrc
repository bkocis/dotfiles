
# gitb(){
# # add git branch to prompt
# STATUS=$(git branch --show-current 2> /dev/null)
# # add python venv to prompt
# if [ -z "$VIRTUAL_ENV" ];
# then
#     PYENV=""
# else
#     PYENV="("`basename $VIRTUAL_ENV`")"
# fi
# # prompt cosmetics
# PS1='${debian_chroot:+($debian_chroot)}\[\033[00;31m\]'$PYENV''$STATUS'😊\[\033[00m\] '
# }

gitb(){
	# add git branch to prompt
	STATUS=$(git branch --show-current 2> /dev/null)
	# add python venv to prompt
	if [ -z "$VIRTUAL_ENV" ];
	then
		    PYENV=""
	    else
		        PYENV="("`basename $VIRTUAL_ENV`")"
	fi
	# prompt cosmetics
	PS1='\[\033[1;41m\]'pyenv:-$PYENV'\[\033[1;42m\]'gitbranch:-$STATUS'\[\033[1;40m\]\u\[\033[0;38m\]@\h:\w👾 '
}



#functions to extend the navigation in the terminal 
cdl() { clear -x ; gitb ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; gitb ; }
cld() { clear -x ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; gitb ; }
cdp() { clear -x ; cd .. ; dirs -c ;tput setaf 1; pwd ; ls ; gitb ; }

# TAB autocomplete directories by iterating through possible folder:
bind '"\e[1;2A":menu-complete-backward'  # autocomplete LEFT-SHIFT+ UP / DOWN arrows !!!!
bind '"\e[1;2B":menu-complete'
# it might be that for your terminal you need to disble a scrolling with SHIFT+arrow keys 

# History search CTRL+R and type 
HISTSIZE=1000000000 HISTFILESIZE=1000000000

# set the directory colors in the terminal to colors in the .dircolors 
eval "$(dircolors -b .dircolors)"
	# for command line mathematic, def of pi
	# other physics constants 

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
    ;;
*)
    ;;
esac
#------------------------------------

# define pi for calculations with bc
pi=$(echo "scale=10; 4*a(1)" | bc -l)

alias brightness='xbacklight -set'
alias lls='ls -X --group-directories-first --format=single-column'
alias ls='ls -X --color=auto --group-directories-first'
alias lsd='ls -d */'
alias cal='echo; date; echo; ncal -b; echo'

alias open='xdg-open' # for xfce4
alias wifi_ip_get='ifconfig | grep -Eo "inet (addr:)?([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127.0.0.1"'
alias mem_chach_clear='su free && sync && echo 3 > /proc/sys/vm/drop_caches && free'

function openjpg { (ls -l *.[jJ][pP][gG] | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function openpng { (ls -l *.[pP][nN][gG] | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function opentype() { (ls -l *."$1" | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function opentype2() { (ls -tr *."$1" | sed -n '$p' | awk '{cmd="gnome-open " $0; system(cmd)}') }
function openlast_modified { (ls -tr | sed -n '$p' | awk '{cmd="gnome-open " $0; system(cmd)}') }

#------------------------------------
