local M = {}

M.lsp_on_attach = function(bufnr***REMOVED***
    local opts = {
        noremap = true,
        silent = false
    }
    -- code actions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua require"telescope.builtin".lsp_de***REMOVED***nitions(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua require"telescope.builtin".lsp_references(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua require"telescope.builtin".lsp_implementations(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.signature_help(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_de***REMOVED***nition(***REMOVED***<CR>', opts***REMOVED***

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca',
        "<cmd>lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes'***REMOVED***.get_cursor({}***REMOVED******REMOVED***<CR>", opts***REMOVED***

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
        '<cmd>lua require"telescope.builtin".lsp_document_diagnostics(require("telescope.themes"***REMOVED***.get_ivy({}***REMOVED******REMOVED***<CR>',
        opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q',
        '<cmd>lua require"telescope.builtin".lsp_workspace_diagnostics(***REMOVED***<CR>', opts***REMOVED***
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', ':FormatCode<CR>', opts***REMOVED***
end

return M
