nnoremap <silent> <leader>ps :lua require('telescope.builtin'***REMOVED***.grep_string({ search = vim.fn.input("Grep For > "***REMOVED***}***REMOVED***<CR>
nnoremap <silent> <C-p> :lua require('telescope.builtin'***REMOVED***.git_***REMOVED***les(***REMOVED***<CR>
nnoremap <silent> <Leader>pf :lua require('telescope.builtin'***REMOVED***.***REMOVED***nd_***REMOVED***les(***REMOVED***<CR>

nnoremap <silent> <leader>pw :lua require('telescope.builtin'***REMOVED***.grep_string { search = vim.fn.expand("<cword>"***REMOVED*** }<CR>
nnoremap <silent> <leader>pb :lua require('telescope.builtin'***REMOVED***.buffers(***REMOVED***<CR>
nnoremap <silent> <leader>vh :lua require('telescope.builtin'***REMOVED***.help_tags(***REMOVED***<CR>

nnoremap <silent> <leader>gw :lua require('telescope'***REMOVED***.extensions.git_worktree.git_worktrees(***REMOVED***<CR>
nnoremap <silent> <leader>gm :lua require('telescope'***REMOVED***.extensions.git_worktree.create_git_worktee(***REMOVED***<CR>nr

nnoremap <silent> <leader>vrc :lua require('zhongjis.telescope'***REMOVED***.search_dot***REMOVED***les(***REMOVED***<CR>
