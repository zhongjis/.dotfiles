packloadall

syntax on
***REMOVED***letype plugin indent on

set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nu
set nowrap
set noswap***REMOVED***le
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undo***REMOVED***le
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s***REMOVED*** leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug***REMOVED***begin('~/.vim/plugged'***REMOVED***

" vimplug auto install
let data_dir = has('nvim'***REMOVED*** ? stdpath('data'***REMOVED*** . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'***REMOVED******REMOVED***
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'

" Theme
Plug 'gruvbox-community/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'

" LSP con***REMOVED***g
Plug 'neovim/nvim-lspcon***REMOVED***g'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mfussenegger/nvim-jdtls'

" LSP Actions
Plug 'tjdevries/astronauta.nvim'
Plug 'RishabhRD/lspactions'

" LSP Cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" google vim-codefmt
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" NerdTree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/lsp-status.nvim'

" Other
Plug 'mbbill/undotree'
Plug 'simrat39/symbols-outline.nvim'
Plug 'jiangmiao/auto-pairs'

call plug***REMOVED***end(***REMOVED***

" load lua settings
lua require("zhongjis"***REMOVED***

" theme
" colorscheme gruvbox
colorscheme palenight
set background=dark

" nerdtree
let NERDTreeMinimalUI=1

" remapping leader key to space
let mapleader = " "
