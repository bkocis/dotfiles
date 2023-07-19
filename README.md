#### Repository of linux rc files

### bashrc

 - Extend the functionality of a bash shell by adding a few extra lines to the .bashrc:

	`cdl() { clear -x ; cd "$1" ; pushd . > /dev/null ; tput setaf 1; pwd ; tput sgr 0 ; ls ; }`

	`cdp() { clear -x ; cd .. "$1" ; dirs -c ;tput setaf 1; pwd ; ls ;}`

	Function `cdl` and `cdp` are extending the `cd` and `cd ..`, respectively,
	with: (1) clearing the screen, (2) listing the content of the folder and (3)
	printing the current working directory as the first line.  


	The `cdl` is extended with `pushd` as well, just in case you accidentally hit 'enter' after `cd`. When that happens 
	type `popd` and you are back where you were instead of the '/home' directory. 

	Example:

	- ![bash_example](https://raw.github.com/bkocis/linux_rc-s/master/bash_prompt.gif)


 - Default auto completion in bash uses the tabulator key to match up until the next ambiguous character.
	In case you want to circulate between all possibilities (similaly to zsh default) use `bind`. Adding the following `bind` commands to the .bashrc will asign the key combination of LEFT-SHIFT + the UP arrow to bind and will execute the autocomplete by iteration through all complete possibilities, not just up untill the next common character.

	`bind '"\e[1;2A":menu-complete-backward`

	`bind '"\e[1;2B":menu-complete'`

	To list out all available sockets to bind see `bind -ls`. 
	The LEFT-SHIFT+Up arrow has the `^[[1;2A` metacharacter, while the LEFT-SHIFT+Down arrow has the `^[[1;2B`. 


 - To further customize the shell use different colors for various extensions.
	Evaluate the .dircolors by:
	`eval "$(dircolors -b .dircolors)"`

## CTRL +R 

```bash
sudo add-apt-repository ppa:ultradvorka/ppa
sudo apt-get update
sudo apt-get install hstr
```
https://github.com/dvorka/hstr

## vimrc

Use VimPlug to install plugins from https://github.com/junegunn/vim-plug

Enable autocomplete with Coc - needs yarn to build and install from .vimrc coc folder 

To support autocomplete from a venv in python, add the line to .vimrc

`let g:python3_host_prog='/usr/bin/python3'`

https://vimawesome.com/plugin/vim-python-virtualenv-hard-things

https://vimawesome.com/plugin/coc-nvim

For this installation nodejs will be required 
https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04
`cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs`

yarn installation
`sudo npm install --global yarn`

Coc
~/.vim/pluggins/coc
`yarn install`

Coc-python plugin
`:CocInstall coc-pyright`


### json formatting in vim 

`:%!jq .` in vi, install `jq` first `sudo apt-get jq`

---
[.bashrc](https://github.com/bkocis/linux_rc-s/blob/master/bashrc)


[.vimrc](https://github.com/bkocis/linux_rc-s/blob/master/vimrc)


[.dircolors](https://github.com/bkocis/linux_rc-s/blob/master/dircolors)


 


