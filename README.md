# Repository of linux rc files

Extend the .bashrc with:

`cdl() { clear ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }`

`cdp() { clear ; cd .. "$1" ; dirs -c ;tput setaf 1; pwd ; ls ;}`

function `cdl` and `cdp` are extending the `cd` and `cd ..`, respectivelly,
with: (1) clearing the screen, (2) listing the content of the folder and (3)
printing the current working directory as the first line.  
The `cdl` uses `pushd`, just in case you hit enter after `cd`. If that happends 
type `popd` and you are back where you were. 

Example:

![bash_example](https://raw.github.com/bkocis/linux_rc-s/master/bash_prompt.gif)

---

*bashrc*


*vimrc*


*dircolors*

	file type specific color in the shell

 


