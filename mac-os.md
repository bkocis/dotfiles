
Seeting up python, cli, zsh, brew on mac M2

- brew
  

- zsh

  

- vi/vim
  - use the vim installation from the previous page (plugins, vimrc-s)
  
- conda/python
  - create conda environments from the command line https://kontext.tech/article/913/create-environments-with-different-python-versions-in-anaconda
  - creating python virtual envs using conda https://www.jetbrains.com/help/pycharm/conda-support-creating-conda-virtual-environment.html#create-a-conda-environment
  - fix an issue in pycharm, when the conda env is not in the suggested site location https://youtrack.jetbrains.com/issue/PY-51533/Pycharm-does-not-find-conda-executables-outside-HOME
  - the fix is to point the conda env to the file where conda/miniconda is installed
    
  
```bash
Using conda env to install lightGBM and tensorflow on M1/M2-MacBook (IDE PyCharm)

step 1: install miniforge3 as conda environment

                   1.1 go to https://github.com/conda-forge/miniforge

                   1.2 download the version for arm-architecture

                   1.3 go to the local directory of this downloaded file and run in terminal:

           sh Miniforge3-MacOSX-arm64.sh

                         give ‘yes’ always till miniforge install finished

                   1.4 run in the terminal:

           brew install miniforge

                   1.5 check in the terminal if the miniforge is installed successfully:      

           conda –version

step 2: clone the project and setup interpreter
                   status 2023.04.20 : highest version of python in miniforge is 3.10, to be upgraded in the future.
                   go to terminal, if it’s not the env. of the current project then activate the project env.:           
           conda activate <env_name_of_this_project>

step 3 - case: if you have lightgbm in your requirements

                   3.1 install lightgbm via conda in terminal with project env.:

           conda install lightgbm==version_number

                   3.2 install other packages in the requirements.txt as usual:     

           pip install -r requirements.txt --extra-index-url xxxxx

step 3 - case: if you have tensorflow in your requirements

                   3.1 in terminal with project env.:         

           conda install tensorflow==version_number

                   3.2 install tensorflow apple dependency via conda:

           conda install -c apple tensorflow-deps

                   3.3 install tensorflow macos vis conda:           

           python -m pip install tensorflow-macos==version_number

                   3.4 install other packages in the requirements.txt as usual:

           pip install -r requirements.txt --extra-index-url xxxx

for example after initializing the venv: 
conda install tensorflow==2.11.0
conda install -c apple tensorflow-deps
python -m pip install tensorflow-macos==2.11.0

```


---

Other settings 
==============

# Mouse and trackpad setting 
https://formulae.brew.sh/cask/unnaturalscrollwheels


# Keyboard shortcuts 

áä are written with Option key + e and u for the umlauts 

<img src="https://www.webwandtattoo.com/de/img/sc002mb-jpg/folder/products-listado-merchant/aufkleber-schwarze-tastaturkurzbefehle.jpg">

finder -> enter path using key "⇧⌘G" and paste the full path. 

----

Keyboard commands
=================

`command`+ `option`+ `esc` - > forse quit

`command` + `tab` + `option` -> maximze or minimize 

firefox -> Chronic (history) -> recentrly closed windows -> reopen tabs 


Umlaut letters
==============

`option` + `u` and type letter ä ë, ö
