-- global mapping
-- remap mapleader
vim.g.mapleader = ' '
vim.env.DOTFILES = "~/.con***REMOVED***g/nvim"

vim.ui.select = require'lspactions'.select
vim.ui.input = require'lspactions'.input

local opts = {
    noremap = true,
    silent = false,
}

-- basics
vim.api.nvim_set_keymap('n', '<F1>', '<cmd>NvimTreeFindFile<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>UndotreeToggle<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<F3>', '<cmd>SymbolsOutline<CR>', opts***REMOVED***

-- telescope
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua require("telescope.builtin"***REMOVED***.git_***REMOVED***les(***REMOVED***<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin"***REMOVED***.***REMOVED***nd_***REMOVED***les(***REMOVED***<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>ps', '<cmd>lua require("telescope.builtin"***REMOVED***.grep_string({ search = vim.fn.input("Grep For > "***REMOVED***}***REMOVED***<CR>', opts***REMOVED***

vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>lua require("telescope.builtin"***REMOVED***.live_grep(***REMOVED***<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>pw', '<cmd>lua require("telescope.builtin"***REMOVED***.grep_string { search = vim.fn.expand("<cword>"***REMOVED*** }<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>pb', '<cmd>lua require("telescope.builtin"***REMOVED***.buffers(***REMOVED***<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>vh', '<cmd>lua require("telescope.builtin"***REMOVED***.help_tags(***REMOVED***<CR>', opts***REMOVED***

vim.api.nvim_set_keymap('n', '<leader>gw', '<cmd>lua require("telescope"***REMOVED***.extensions.git_worktree.git_worktrees(***REMOVED***<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>gm', '<cmd>lua require("telescope"***REMOVED***.extensions.git_worktree.create_git_worktree(***REMOVED***<CR>', opts***REMOVED***

vim.api.nvim_set_keymap('n', '<leader>vrc', '<cmd>lua require("zhongjis.telescope.customized"***REMOVED***.search_dot***REMOVED***les(***REMOVED***<CR>', opts***REMOVED***

-- git - fugitive
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>G<CR>', opts***REMOVED***
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>GCheckout<CR>', opts***REMOVED***

local M = {}

M.lsp_attach_mapping = function(bufnr***REMOVED***
    -- code actions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua require"telescope.builtin".lsp_de***REMOVED***nitions(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>TroubleToggle lsp_references<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua require"telescope.builtin".lsp_implementations(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.signature_help(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_de***REMOVED***nition(***REMOVED***<CR>', opts***REMOVED***

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca',
        "<cmd>lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes'***REMOVED***.get_cursor({}***REMOVED******REMOVED***<CR>", opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca',
        "<cmd>lua require'telescope.builtin'.lsp_range_code_actions(require('telescope.themes'***REMOVED***.get_cursor({}***REMOVED******REMOVED***<CR>", opts***REMOVED***

    -- workspace
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl',
        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders(***REMOVED******REMOVED******REMOVED***<CR>', opts***REMOVED***

    -- Diagnostic
    vim.api
        .nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next(***REMOVED***<CR>', opts***REMOVED***

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>b',
        '<cmd>Trouble document_diagnostics<CR>',
        opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q',
        '<cmd>Trouble workspace_diagnostics<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>FormatCode<CR>', opts***REMOVED***
end

return M
