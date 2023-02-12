set number
set viminfo='100,<100,s10,h 
"set hlsearch

"to start the vi in insert mode Ecs key is preserved ! 
:startinsert

"blocks comment 
"select with SHIFT+v and than hit # (for uncomment -#)
vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>

"block indent 
" also use SHIFT+v to select and that SHIFT + > (or <) 

"leave "+ registry available for the system after closing vi
autocmd VimLeave * call system("xsel -ib", getreg('+'))
"requires xsel 

set mouse=a 

set printoptions=number:y,syntax:n

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'sansyrox/vim-python-virtualenv'
Plug 'neoclide/coc.nvim'

call plug#end()

let g:python3_host_prog='/usr/bin/python3'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
