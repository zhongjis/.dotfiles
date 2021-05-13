packloadall

syntax on
***REMOVED***letype plugin indent on

set exrc
set guicursor=
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

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Coc + coc-highlight + coc-yank
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NerdTree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" other
Plug 'gruvbox-community/gruvbox'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'voldikss/vim-floaterm'

call plug***REMOVED***end(***REMOVED***

let mapleader = " "

" gruvbox
colorscheme gruvbox
set background=dark

lua require("zhongjis"***REMOVED***

" remappinp
nnoremap <F2> :UndotreeToggle<CR>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :GCheckout<CR>

" nerdtree
let NERDTreeMinimalUI=1

""""""""""""""""COC Con***REMOVED***g""""""""""""""" 

" coc - use tab as suggestion selector
inoremap <silent><expr> <TAB>
      \ pumvisible(***REMOVED*** ? "\<C-n>" :
      \ <SID>check_back_space(***REMOVED*** ? "\<TAB>" :
      \ coc***REMOVED***refresh(***REMOVED***
inoremap <expr><S-TAB> pumvisible(***REMOVED*** ? "\<C-p>" : "\<C-h>"

" Use <cr> to con***REMOVED***rm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on con***REMOVED***rm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info'***REMOVED***
  inoremap <expr> <cr> complete_info(***REMOVED***["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
***REMOVED***
  inoremap <expr> <cr> pumvisible(***REMOVED*** ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" coc - go to navigation
nmap <silent> gd <Plug>(coc-de***REMOVED***nition***REMOVED***
nmap <silent> gy <Plug>(coc-type-de***REMOVED***nition***REMOVED***
nmap <silent> gi <Plug>(coc-implementation***REMOVED***
nmap <silent> gr <Plug>(coc-references***REMOVED***

" show documentation on k
nnoremap <silent> K :call <SID>show_documentation(***REMOVED***<CR>

function! s:show_documentation(***REMOVED***
  if (index(['vim','help'], &***REMOVED***letype***REMOVED*** >= 0***REMOVED***
    execute 'h '.expand('<cword>'***REMOVED***
  ***REMOVED***
    call CocActionAsync('doHover'***REMOVED***
  endif
endfunction

function! s:check_back_space(***REMOVED*** abort
  let col = col('.'***REMOVED*** - 1
  return !col || getline('.'***REMOVED***[col - 1]  =~***REMOVED*** '\s'
endfunction

if exists('*complete_info'***REMOVED***
  inoremap <expr> <cr> complete_info(***REMOVED***["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
***REMOVED***
  inoremap <expr> <cr> pumvisible(***REMOVED*** ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected***REMOVED***
nmap <leader>a  <Plug>(coc-codeaction-selected***REMOVED***

""""""""""""""""end of COC Con***REMOVED***g"""""""""""""""
