nnoremap <leader>ps :lua require('telescope.builtin'***REMOVED***.grep_string({ search = vim.fn.input("Grep For > "***REMOVED***}***REMOVED***<CR>
nnoremap <C-p> :lua require('telescope.builtin'***REMOVED***.git_***REMOVED***les(***REMOVED***<CR>
nnoremap <Leader>pf :lua require('telescope.builtin'***REMOVED***.***REMOVED***nd_***REMOVED***les(***REMOVED***<CR>

nnoremap <leader>pw :lua require('telescope.builtin'***REMOVED***.grep_string { search = vim.fn.expand("<cword>"***REMOVED*** }<CR>
nnoremap <leader>pb :lua require('telescope.builtin'***REMOVED***.buffers(***REMOVED***<CR>
nnoremap <leader>vh :lua require('telescope.builtin'***REMOVED***.help_tags(***REMOVED***<CR>

nnoremap <leader>gw :lua require('telescope'***REMOVED***.extensions.git_worktree.git_worktrees(***REMOVED***<CR>
nnoremap <leader>gm :lua require('telescope'***REMOVED***.extensions.git_worktree.create_git_worktee(***REMOVED***<CR>nr

nnoremap <leader>vrc :lua require('zhongjis.telescope'***REMOVED***.search_dot***REMOVED***les(***REMOVED***<CR>
