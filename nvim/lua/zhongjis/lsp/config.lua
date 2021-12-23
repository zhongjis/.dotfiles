local M = {}

local lsp_installer = require("nvim-lsp-installer"***REMOVED***
local default_on_attach = function(_, bufnr***REMOVED***
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc'***REMOVED***
    require('zhongjis.mapping'***REMOVED***.lsp_attach_mapping(bufnr***REMOVED***
end
-- nvim-cmp supports additional completion capabilities
local capabilities = require('cmp_nvim_lsp'***REMOVED***.update_capabilities(vim.lsp.protocol.make_client_capabilities(***REMOVED******REMOVED***
local util = require('zhongjis.util'***REMOVED***

function M.setup_default(***REMOVED***
    local ignored_servers = { 'jdtls' }
    -- Enable the language servers using nvim-lsp-installer
    lsp_installer.on_server_ready(function(server***REMOVED***
        local opts = {
            on_attach = default_on_attach,
            capabilities = capabilities
        }
        if server.name == "sumneko_lua" then
            local sumneko_opts = require('zhongjis.lsp.settings.sumneko_lua'***REMOVED***
            opts = vim.tbl_deep_extend("force", sumneko_opts, opts***REMOVED***
        end

        if not util.has_value(ignored_servers, server.name***REMOVED*** then
            server:setup(opts***REMOVED***
        end

    end***REMOVED***
end

function M.setup_jdtls(***REMOVED***
    local opts = {
        on_attach = default_on_attach,
        capabilities = capabilities,
    }
    local jdtls_opts = require('zhongjis.lsp.settings.jdtls'***REMOVED***
    opts = vim.tbl_deep_extend("force", opts, jdtls_opts***REMOVED***

    local available, jdtls = lsp_installer.get_server("jdtls"***REMOVED***
    if available then
        local con***REMOVED***g = vim.tbl_deep_extend("force", jdtls._default_options, opts***REMOVED***
        require('jdtls'***REMOVED***.start_or_attach(con***REMOVED***g***REMOVED***
    ***REMOVED***
        print('[LSP] Error, jdtls server is not avilable in nvim-lsp-installer'***REMOVED***
    end
end

function M.setup_diagnositc(***REMOVED***
  local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  for _, sign in ipairs(signs***REMOVED*** do
    vim.fn.sign_de***REMOVED***ne(sign.name, { texthl = sign.name, text = sign.text, numhl = "" }***REMOVED***
  end

  local con***REMOVED***g = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      pre***REMOVED***x = "",
    },
  }

  vim.diagnostic.con***REMOVED***g(con***REMOVED***g***REMOVED***
end

return M
