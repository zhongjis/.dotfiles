vim.lsp.set_log_level("debug"***REMOVED***

-- LSP settings
local nvim_lsp = require 'lspcon***REMOVED***g'
local on_attach = function(_, bufnr***REMOVED***
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc'***REMOVED***

  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.de***REMOVED***nition(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders(***REMOVED******REMOVED******REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_de***REMOVED***nition(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action(***REMOVED***<CR>', opts***REMOVED***
  -- vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist(***REMOVED***<CR>', opts***REMOVED***
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>so', [[<cmd>lua require('telescope.builtin'***REMOVED***.lsp_document_symbols(***REMOVED***<CR>]], opts***REMOVED***
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting(***REMOVED***' ]]
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities(***REMOVED***
capabilities = require('cmp_nvim_lsp'***REMOVED***.update_capabilities(capabilities***REMOVED***

-- Enable the following language servers
local servers = { 'jdtls' }
for _, lsp in ipairs(servers***REMOVED*** do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args***REMOVED***
      luasnip.lsp_expand(args.body***REMOVED***
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(***REMOVED***,
    ['<C-n>'] = cmp.mapping.select_next_item(***REMOVED***,
    ['<C-d>'] = cmp.mapping.scroll_docs(-4***REMOVED***,
    ['<C-f>'] = cmp.mapping.scroll_docs(4***REMOVED***,
    ['<C-Space>'] = cmp.mapping.complete(***REMOVED***,
    ['<C-e>'] = cmp.mapping.close(***REMOVED***,
    ['<CR>'] = cmp.mapping.con***REMOVED***rm {
      behavior = cmp.Con***REMOVED***rmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback***REMOVED***
      if cmp.visible(***REMOVED*** then
        cmp.select_next_item(***REMOVED***
      ***REMOVED***if luasnip.expand_or_jumpable(***REMOVED*** then
        luasnip.expand_or_jump(***REMOVED***
      ***REMOVED***
        fallback(***REMOVED***
      end
    end,
    ['<S-Tab>'] = function(fallback***REMOVED***
      if cmp.visible(***REMOVED*** then
        cmp.select_prev_item(***REMOVED***
      ***REMOVED***if luasnip.jumpable(-1***REMOVED*** then
        luasnip.jump(-1***REMOVED***
      ***REMOVED***
        fallback(***REMOVED***
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
