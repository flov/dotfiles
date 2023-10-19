call plug#begin()
" Yet to check out:
" Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'johnstef99/vim-nerdtree-syntax-highlight'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'slim-template/vim-slim' " Slim Syntax
Plug 'hashivim/vim-terraform' " Terraform Syntax
Plug 'ayu-theme/ayu-vim' " colorscheme
Plug 'pangloss/vim-javascript' " JS Syntax highlighting
let ayucolor="dark"   " for dark version of theme

Plug 'nvim-lua/plenary.nvim' " for telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'flov/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-dispatch'
Plug 'thoughtbot/vim-rspec'
Plug 'dhruvasagar/vim-zoom'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'lifepillar/vim-solarized8'
Plug 'prettier/vim-prettier'
Plug 'mileszs/ack.vim'
Plug 'mrdotb/vim-tailwindcss'
Plug 'evanleck/vim-svelte'
Plug 'preservim/nerdcommenter'
Plug 'preservim/vimux'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'matze/vim-move'
Plug 'github/copilot.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/guicolorscheme.vim'
Plug 'vim-scripts/Gundo'
Plug 'tpope/vim-rails'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jparise/vim-graphql'

call plug#end()

source ~/.vimrc.after
colorscheme gruvbox
