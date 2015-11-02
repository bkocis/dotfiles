# there is another .bashrc file in /etc/profile.d
# wellcome ascii
#cat /bin/misc/animal8.txt;
/bin/mnost_scripts/battery
alias cdcd='clear; cd; cat /bin/misc/animal8.txt'
alias home='cd;  /bin/mnost_scripts/battery'
alias bones='cd /home/mnost/googleDrive/Bones/ ; ls --group-directories-first'
alias dropb='cd /home/mnost/Dropbox/ ; ls --group-directories-first'
alias Doc='cd /home/mnost/Documents/ ; ls --group-directories-first'
alias Down='cd /home/mnost/Downloads/ ; ls --group-directories-first'
alias pystuff='cd /home/mnost/Documents/python_suff/ ; ls --group-directories-first'
alias ipy='ipython --pylab'
alias ipyn='ipython notebook . &'
alias ipyStartup_old='cd /home/mnost/.config/ipython/profile_default/startup/'
alias ipyStartup='cd /home/mnost/.ipython/profile_default/startup/ ; cdl'
alias lls='ls -X --group-directories-first --format=single-column'
alias ls='ls -X --color=auto --group-directories-first'
alias lt='ls -ltr'
alias lsd='ls -d */'
alias Idea='cd /home/mnost/Documents/Idea_Rinfuz/ ; ls'
alias cal='echo; date; echo; ncal -b; echo'
alias term='gnome-terminal --full-screen'
#alias thunderbird='thunderbird 2>.nul &'
alias thunderbird='thunderbird 2> /dev/null &'
alias folder_file_size='du -ch | grep total'

function openjpg { (ls -l *.[jJ][pP][gG] | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function openpng { (ls -l *.[pP][nN][gG] | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function opentype() { (ls -l *."$1" | awk '/^-/{file=$9}END{cmd="gnome-open " file; system(cmd)}') }
function opentype2() { (ls -tr *."$1" | sed -n '$p' | awk '{cmd="gnome-open " $0; system(cmd)}') }
function openlast_modified { (ls -tr | sed -n '$p' | awk '{cmd="gnome-open " $0; system(cmd)}') }

alias mem_chach_clear='su free && sync && echo 3 > /proc/sys/vm/drop_caches && free'

#alias cdl='cd  && ls  '
#cdl() { clear ; cd "$1" ; tput setaf 1; tput setab 7; pwd ; tput sgr 0; tput sgr 0 ; ls ; }
cdl() { clear ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }
#cdl() { clear ; cd "$1" ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }
cld() { clear ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }
#cld() { clear ; cd "$1" ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }
cdp() { clear ; cd .. "$1" ; dirs -c ;tput setaf 1; pwd ; ls ;}

# TAB autocomplete directories on cd like zsh :
#bind 'TAB:possible-completions' ; 
#bind 'TAB:menu-complete'
#bind '"\e[Z":menu-complete-backward'
bind '"\e[1;2A":menu-complete-backward'  # autocomplete LEFT-SHIFT+ UP / DOWN arrows !!!!
bind '"\e[1;2B":menu-complete'
#bind '"{":menu-complete-backward'  # autocomplete to prevent complication with SHIFT+ARROWS UP/DOWN
#bind '"}":menu-complete'
#bind '"^[":menu-complete-backward'  # autocomplete to prevent complication with SHIFT+ARROWS UP/DOWN
#bind '"^]":menu-complete'
#bind 'set show-all-if-ambiguous on'

# History search CTRL+R and type 
HISTSIZE=999 HISTFILESIZE=999

#Latex pdf compiling sequance 
bangltx() { latex "$1"ltx ; bibtex "$1"aux ; latex "$1"ltx ; latex "$1"ltx ; dvipdf "$1"dvi ; gnome-open "$1"pdf ;}

alias clc='clear'
alias open='gnome-open'
alias peakfit_wine='wine /home/mnost/.wine/drive_c/Program\ Files/PeakFit/pf.exe & '
alias winplotr_='wine /home/mnost/.wine/drive_c/FullProf_Suite/winplotr.exe & ' 
alias ssh_mint17_virtual_mashine_R242='ssh -p 3021 balas@129.187.132.44'
alias ssh_X_mint17_virtual_mashine_R242='ssh -X -p 3021 balas@129.187.132.44'
alias ssh_skpc014='ssh -X skpc014@129.187.132.43'
alias ssh_mare='ssh -X mare@129.187.132.44'

alias scp_to_skpc014='echo "scp file skpc014@129.187.132.43:/home/skpc014/Public/"'

#scp# 
#from remote computers, also VM-s to mnost: 
#   scp user@129.187.132.177:/home/user/WIEN2k/NiTi/nw.txt /home/mnost/
#   scp -P 3021 balas@129.187.132.44:/home/balas/Documents/Latex/root_template.zip /home/mnost/


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

#---------------------------------------------------------------------------------------------
# trying to implement the change of the title of the terminal ! 
#-------------------------------------
#-------------------------------------------------------------------------
#if this is an xterm set the title to user@host:dir

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
