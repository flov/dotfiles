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
set numberwidth=5
set autoread      " Reload files changed outside vim

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" no long delay for leader key
set timeoutlen=1000 ttimeoutlen=0

" Set mouse mode in iterm
set ttyfast
set mouse=a

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 100 characters is
set textwidth=100
" set formatoptions=cq
set formatoptions=qrn1
set wrapmargin=0
set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Undo settings
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set backupdir=$HOME/.swp,/tmp
set directory=$HOME/.swp,/tmp
set encoding=utf-8
set ruler         " show the cursor position all the time
set showcmd       " display incomplete command
set laststatus=2  " Always display the status line
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

"Set default font in mac vim and gvim
set guifont=Inconsolata\ for\ Powerline:h14
set cursorline    " highlight the current line
set visualbell    " stop that ANNOYING beeping
set wildmenu
set wildmode=list:longest,full

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


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
let g:airline_theme = 'wombat'
syntax on

" open NERDTree when starting vim
autocmd VimEnter * if !argc() | NERDTree | endif

