syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
***REMOVED***letype plugin indent on
set expandtab
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
set completeopt=menuone,noinsert,noselect
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug***REMOVED***begin('~/.vim/plugged'***REMOVED***

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf***REMOVED***install(***REMOVED*** } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug***REMOVED***end(***REMOVED***

autocmd vimenter * colorscheme gruvbox
set background=dark    " Setting dark mode
if exists('+termguicolors'***REMOVED***
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

""""""""""""""""COC Con***REMOVED***g""""""""""""""" 
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

""""""""""""""""end of COC Con***REMOVED***g""""""""""""""" 

let mapleader = " "

" remappinp
nnoremap <Leader>pf :Files<CR>
nnoremap <F1> :NERDTreeFind<CR>
nnoremap <F2> :UndotreeToggle<CR>

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" nerdtree
let NERDTreeMinimalUI=1
