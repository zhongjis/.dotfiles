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
set updatetime=50

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

" Telescope Requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Theme
Plug 'gruvbox-community/gruvbox'

" LSP con***REMOVED***g
Plug 'neovim/nvim-lspcon***REMOVED***g'
Plug 'williamboman/nvim-lsp-installer'

" LSP Cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'simrat39/symbols-outline.nvim'

" NerdTree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'airblade/vim-gitgutter'

" Other
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'

call plug***REMOVED***end(***REMOVED***

" load lua settings
lua require("zhongjis"***REMOVED***

" gruvbox
colorscheme gruvbox
set background=dark

" nerdtree
let NERDTreeMinimalUI=1

" remapping leader key to space
let mapleader = " "

" complete options
set completeopt=menu,menuone,noselect

" remappinp
nnoremap <F2> :UndotreeToggle<CR>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :GCheckout<CR>
