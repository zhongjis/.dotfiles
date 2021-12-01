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

" plugin management
lua require('plugins'***REMOVED***

" load user con***REMOVED***g
lua require("zhongjis"***REMOVED***

" theme
" colorscheme gruvbox
colorscheme palenight
set background=dark

" remapping leader key to space
let mapleader = " "

" gray
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=***REMOVED***808080
" blue
highlight! CmpItemAbbrMatch guibg=NONE guifg=***REMOVED***569CD6
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=***REMOVED***569CD6
" light blue
highlight! CmpItemKindVariable guibg=NONE guifg=***REMOVED***9CDCFE
highlight! CmpItemKindInterface guibg=NONE guifg=***REMOVED***9CDCFE
highlight! CmpItemKindText guibg=NONE guifg=***REMOVED***9CDCFE
" pink
highlight! CmpItemKindFunction guibg=NONE guifg=***REMOVED***C586C0
highlight! CmpItemKindMethod guibg=NONE guifg=***REMOVED***C586C0
" front
highlight! CmpItemKindKeyword guibg=NONE guifg=***REMOVED***D4D4D4
highlight! CmpItemKindProperty guibg=NONE guifg=***REMOVED***D4D4D4
highlight! CmpItemKindUnit guibg=NONE guifg=***REMOVED***D4D4D4
