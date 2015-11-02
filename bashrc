# wellcome ascii
#cat /bin/misc/animal8.txt;
/bin/mnost_scripts/battery
alias cdcd='clear; cd; cat /bin/misc/animal8.txt'
alias ipy='ipython --pylab'
alias ipyn='ipython notebook . &'
alias ipyStartup_old='cd /home/mnost/.config/ipython/profile_default/startup/'
alias ipyStartup='cd /home/mnost/.ipython/profile_default/startup/ ; cdl'
alias lls='ls -X --group-directories-first --format=single-column'
alias ls='ls -X --color=auto --group-directories-first'
alias lt='ls -ltr'
alias lsd='ls -d */'
alias cal='echo; date; echo; ncal -b; echo'
alias term='gnome-terminal --full-screen'

function openjpg { (ls -l *.[jJ][pP][gG] | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function openpng { (ls -l *.[pP][nN][gG] | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function opentype() { (ls -l *."$1" | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function opentype2() { (ls -tr *."$1" | sed -n '$p' | awk '{cmd="gnome-open " $0; system(cmd)}') }
function openlast_modified { (ls -tr | sed -n '$p' | awk '{cmd="gnome-open " $0; system(cmd)}') }

alias mem_chach_clear='su free && sync && echo 3 > /proc/sys/vm/drop_caches && free'

cdl() { clear ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }
cld() { clear ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }
cdp() { clear ; cd .. "$1" ; dirs -c ;tput setaf 1; pwd ; ls ;}

# TAB autocomplete directories on cd like zsh :
bind '"\e[1;2A":menu-complete-backward'  # autocomplete LEFT-SHIFT+ UP / DOWN arrows !!!!
bind '"\e[1;2B":menu-complete'

# History search CTRL+R and type 
HISTSIZE=999 HISTFILESIZE=999

#Latex pdf compiling sequance 
bangltx() { latex "$1"ltx ; bibtex "$1"aux ; latex "$1"ltx ; latex "$1"ltx ; dvipdf "$1"dvi ; gnome-open "$1"pdf ;}

alias clc='clear'
alias open='gnome-open'
alias peakfit_wine='wine /home/mnost/.wine/drive_c/Program\ Files/PeakFit/pf.exe & '
alias winplotr_='wine /home/mnost/.wine/drive_c/FullProf_Suite/winplotr.exe & ' 
alias wifi_ip_get='ifconfig | grep -Eo "inet (addr:)?([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127.0.0.1"'

# Show only current directory name (not full path) on bash prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[00;31m\]𐎚\[\033[00m\] '

eval "$(dircolors -b .dircolors)"
	# for command line mathematic, def of pi
	# other physics constants 
pi=$(echo "scale=10; 4*a(1)" | bc -l)

#battery check 
#brightness 
alias brightness='xbacklight -set'

#-------------------------------------------------------------------------------
# change of the title of the terminal while ALT+TAB 
#-------------------------------------------------------------------------------

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
    ;;
*)
    ;;
esac


#------------------------------------
alias zotero='zotero &'

VESTA=/home/mnost/programs/Vesta/vesta_3p2/VESTA-x86_64/
PATH=$VESTA:$PATH
export VESTA
alias vesta='VESTA &'

FULLPROF=/home/mnost/programs/fullprof/
PATH=$FULLPROF:$PATH
export FULLPROF

GSAS=/home/mnost/programs/gsas/
PATH=$GSAS:$PATH
export GSAS
alias gsas='GSAS'

GSASII=/home/mnost/programs/gsas2/
PATH=$GSASII:$PATH
export GSASII
alias gsas2='GSASII.py'

export PATH="$PATH:/bin/mnost_scripts/"
export PATH="$PATH:/bin/other_scripts/"
export PATH="$PATH:/bin/misc/"
export PATH="$PATH:/bin/py_classes/"
export PATH="$PATH:/bin/py_classes/PRF_py/"
export PATH="$PATH:/bin/py_classes/Algor_seq"
export PATH="$PATH:/bin/R_stat/"
export PATH="$PATH:/home/mnost/Downloads/zotero/Zotero_linux-x86_64"
export PATH="$PATH:/bin/neo4j/neo4j-community-2.1.6/bin/"
export PATH="$PATH:/bin/py_classes/Algor_py_31_05_2015/"
export PYTHONPATH="${PYTHONPATH}:/bin/py_classes/Algor_py_31_05_2015"
#export PATH="$PATH:/bin/py_classes/Algor_py_31_05_2015/"
export PYTHONPATH="$PYTHONPATH:/bin/py_classes/Algor_py_31_05_2015"
export PYTHONPATH="$PYTHONPATH:/home/mnost/Public/testt/test_pcrEdit_/tess"
export PYTHONPATH="$PYTHONPATH:/home/mnost/Public/testt/test_pcrEdit_/tess/"
export PYTHONPATH="$PYTHONPATH:/home/mnost/Public/testt/test_pcrEdit_/"
export PYTHONPATH="$PYTHONPATH:/home/mnost/Public/testt/test_pcrEdit_"
