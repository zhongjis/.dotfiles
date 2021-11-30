vim.lsp.set_log_level("info"***REMOVED***

-- LSP settings
local on_attach = function(_, bufnr***REMOVED***
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc'***REMOVED***

  require('zhongjis.mapping'***REMOVED***.lsp_on_attach(bufnr***REMOVED***

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
