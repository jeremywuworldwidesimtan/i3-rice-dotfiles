" Vimrc Config

" Install and use plugins with vim-plug
call plug#begin('~/.vim/plugged')

    " Plug all the plugins to be installed by typing their GitHub project name
    " for whatever reason
    " Will autodownload from GH
    Plug 'dense-analysis/ale' 
    " Asynchronous Lint Engine (ALE) for syntax checking and error highlighting
    Plug 'preservim/nerdtree' 
    " NERDtree for file manager within vim
    Plug 'vim-airline/vim-airline' 
    " vim-airline for COOL LOOKING statusline
    Plug 'arcticicestudio/nord-vim' 
    " Of course NORD theme for vim

call plug#end()

" Disable compatibility with vi, This is due to some issues
set nocompatible

" Turn on Filetype detection to let vim detect the type of file in use, load plugins for the filetype and load indent file for the filetype
filetype on
filetype plugin on
filetype indent on

" Enable syntax highlighting
" This is the most powerful feature that will display code in different colors making it easy to differnetiate code syntax
syntax on

" Enable line numbers and highlight the selected line
" Two powerful features
set number
set cursorline

" The following are useful features found on https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Now after pasting all of these Visual Studio Code recognizes this as a batch syntax for whatever reason

" Enable a Bash autocompletion-like feature in vim called wildmenu that will autocomplete and/or list files after pressing TAB
" Very useful when opening files using :e
set wildmenu
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Status line configuration

" Clear status line when vimrc is reloaded.
set statusline=

" Set the left side of statusline
set statusline+=\ %F\ %M\ %y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ line\ %l\ of\ %L\ col:\%c 

" Show the status on the second to last line.
set laststatus=2

" Set up airline bar
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" Set the colorscheme to be nord
colorscheme nord
