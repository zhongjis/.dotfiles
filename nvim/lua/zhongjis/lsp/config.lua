vim.lsp.set_log_level("debug"***REMOVED***

-- LSP settings
local on_attach = function(_, bufnr***REMOVED***
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc'***REMOVED***

  local opts = { noremap = true, silent = false }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua require"telescope.builtin".lsp_de***REMOVED***nitions(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua require"telescope.builtin".lsp_references(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua require"telescope.builtin".lsp_implementations(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.signature_help(***REMOVED***<CR>', opts***REMOVED***

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', "<cmd>lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes'***REMOVED***.get_cursor({}***REMOVED******REMOVED***<CR>", opts***REMOVED***

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders(***REMOVED******REMOVED******REMOVED***<CR>', opts***REMOVED***

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_de***REMOVED***nition(***REMOVED***<CR>', opts***REMOVED***

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next(***REMOVED***<CR>', opts***REMOVED***

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>b', '<cmd>lua require"telescope.builtin".lsp_document_diagnostics(require("telescope.themes"***REMOVED***.get_ivy({}***REMOVED******REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua require"telescope.builtin".lsp_workspace_diagnostics(***REMOVED***<CR>', opts***REMOVED*** 
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities(***REMOVED***
capabilities = require('cmp_nvim_lsp'***REMOVED***.update_capabilities(capabilities***REMOVED***

-- Enable the following language servers
local lsp_installer = require("nvim-lsp-installer"***REMOVED***
local path = require("nvim-lsp-installer.path"***REMOVED***
lsp_installer.on_server_ready(function (server***REMOVED***
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if server.name == "jdtls" then
    opts.settings = {
      java = {
        signatureHelp = { enabled = true };
      }
    }
  end

  -- This setup(***REMOVED*** function is exactly the same as lspcon***REMOVED***g's setup function.
  -- Refer to https://github.com/neovim/nvim-lspcon***REMOVED***g/blob/master/doc/server_con***REMOVED***gurations.md
  server:setup(opts***REMOVED***
end***REMOVED***
