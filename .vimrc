syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswap***REMOVED***le
set nobackup
set undodir=~/.vim/undodir
set undo***REMOVED***le
set incsearch
set relativenumber
set rnu
set termguicolors
set scrolloff=8
set noshowmode
set encoding=UTF-8
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug***REMOVED***begin('~/.vim/plugged'***REMOVED***

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf***REMOVED***install(***REMOVED*** } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree' 
Plug 'jiangmiao/auto-pairs'

call plug***REMOVED***end(***REMOVED***

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors'***REMOVED***
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

" coc - basic
set hidden
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" coc - use tab as suggestion selector
inoremap <silent><expr> <TAB>
      \ pumvisible(***REMOVED*** ? "\<C-n>" :
      \ <SID>check_back_space(***REMOVED*** ? "\<TAB>" :
      \ coc***REMOVED***refresh(***REMOVED***
inoremap <expr><S-TAB> pumvisible(***REMOVED*** ? "\<C-p>" : "\<C-h>"

function! s:check_back_space(***REMOVED*** abort
  let col = col('.'***REMOVED*** - 1
  return !col || getline('.'***REMOVED***[col - 1]  =~***REMOVED*** '\s'
endfunction

let mapleader = " "

" remappinp
nnoremap <Leader>pf :Files<CR>
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :UndotreeToggle<cr>

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
