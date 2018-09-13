" Type :so % to refresh .vimrc after making changes

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

let g:ackprg = 'ag --nogroup --nocolor --column'

" Leader - ( , )
let mapleader=","

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

if filereadable(expand("~/.vimrc.mappings"))
  source ~/.vimrc.mappings
endif

" Set color mode to 256
set t_Co=256

set number        " Show linenumber
set autoread      " Reload files changed outside vim

" no long delay for leader key
set timeoutlen=100 ttimeoutlen=0

" Set mouse mode in iterm
set ttyfast
set mouse=a

" Undo settings
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set backupdir=$HOME/.swp,/tmp
set directory=$HOME/.swp,/tmp
set encoding=utf-8

" Make searching better
set gdefault      " Never have to type /g at the end of search / replace again
set ignorecase    " case insensitive searching (unless specified)
set smartcase
set hlsearch
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" color scheme
set background=dark
colorscheme gruvbox
syntax on

" open NERDTree when starting vim
autocmd VimEnter * if !argc() | NERDTree | endif

