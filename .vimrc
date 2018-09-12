""
"" Janus setup
""

" Define paths
" let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
" let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
" let g:janus_custom_path = expand("~/.janus")

let g:ackprg = 'ag --nogroup --nocolor --column'

let mapleader=","

" Source janus's core
" exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
" call janus#add_group("tools")
" call janus#add_group("langs")
" call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
" exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
""  VUNDLE Config
""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
" visualize your Vim undo tree
Plugin 'sjl/gundo.vim'

" Snipmate
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/ZoomWin'

" Indent blocks of text
Plugin 'michaeljsmith/vim-indent-object'

" <Tab> for all your insert completion
Plugin 'ervandew/supertab'

" match more than just single characters with %
Plugin 'tmhedberg/matchit'

" Vim syntax checking
Plugin 'vim-syntastic/syntastic'

Plugin 'mileszs/ack.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ap/vim-css-color'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-dispatch.git'
Plugin 'mattn/gist-vim'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'rking/ag.vim'

" multiple selection with cursor
Plugin 'terryma/vim-multiple-cursors'
Plugin 'posva/vim-vue'

"react colorhighlighting
Plugin 'pangloss/vim-javascript'
Plugin 'justinj/vim-react-snippets'

Plugin 'skalnik/vim-vroom'

"Color scheme
Plugin 'jpo/vim-railscasts-theme'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized.git'

Plugin 'slim-template/vim-slim.git'
Plugin 'morhetz/gruvbox'

"Sounds for vim:
Plugin 'teddywing/auditory.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE Config END

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
" call janus#load_pathogen()

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif



