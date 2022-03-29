packloadall

" syntax on
***REMOVED***letype plugin indent on

set exrc
set relativenumber
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
set signcolumn=yes
set cursorline

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s***REMOVED*** leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" plugin management
lua require('plugins'***REMOVED***

" load user con***REMOVED***g
lua require("zhongjis"***REMOVED***

" theme
colorscheme gruvbox
" colorscheme palenight
" colorscheme gruvbox-material

" auto save
augroup focus
  autocmd!
  autocmd FocusLost,BufLeave * silent! wa
augroup END
