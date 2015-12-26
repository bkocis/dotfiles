#### Repository of linux rc files

Extend the functionality of a bash shell by adding a few extra lines to the .bashrc:

`cdl() { clear ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }`

`cdp() { clear ; cd .. "$1" ; dirs -c ;tput setaf 1; pwd ; ls ;}`

Function `cdl` and `cdp` are extending the `cd` and `cd ..`, respectively,
with: (1) clearing the screen, (2) listing the content of the folder and (3)
printing the current working directory as the first line.  


The `cdl` is extended with `pushd` as well, just in case you accidentally hit 'enter' after `cd`. When that happens 
type `popd` and you are back where you were instead of the '/home' directory. 

Example:

![bash_example](https://raw.github.com/bkocis/linux_rc-s/master/bash_prompt.gif)

---
[my .bashrc](https://github.com/bkocis/linux_rc-s/blob/master/bashrc)



[vimrc](https://github.com/bkocis/linux_rc-s/blob/master/vimrc)

To further customize the shell use different colors for various extensions.

[dircolors](https://github.com/bkocis/linux_rc-s/blob/master/dircolors)


 


