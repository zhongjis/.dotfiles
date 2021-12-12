local M = {}

local lsp_installer = require("nvim-lsp-installer"***REMOVED***
local default_on_attach = function(_, bufnr***REMOVED***
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc'***REMOVED***
    require('zhongjis.mapping'***REMOVED***.lsp_attach_mapping(bufnr***REMOVED***
end
-- nvim-cmp supports additional completion capabilities
local capabilities = require('cmp_nvim_lsp'***REMOVED***.update_capabilities(vim.lsp.protocol.make_client_capabilities(***REMOVED******REMOVED***

function M.setup_default(***REMOVED***
    -- Enable the language servers using nvim-lsp-installer
    lsp_installer.on_server_ready(function(server***REMOVED***
        local opts = {
            on_attach = default_on_attach,
            capabilities = capabilities
        }
        if server.name == "sumneko_lua" then
            opts.settings = {
                Lua = {
                    diagnostics = {
                        globals = {'vim'}
                    }
                }
            }
        end

        if server.name ~= "jdtls" then
            server:setup(opts***REMOVED***
        end
    end***REMOVED***
end

function M.setup_jdtls(***REMOVED***
    local custom_con***REMOVED***g = {
        on_attach = default_on_attach,
        capabilities = capabilities,
        settings = {
            java = {
                signatureHelp = {
                    enabled = true
                }
            }
        }
    }
    local available, jdtls = lsp_installer.get_server("jdtls"***REMOVED***
    if available then
        local con***REMOVED***g = vim.tbl_deep_extend("force", jdtls._default_options, custom_con***REMOVED***g***REMOVED***
        require('jdtls'***REMOVED***.start_or_attach(con***REMOVED***g***REMOVED***
    ***REMOVED***
        print('[LSP] Error, jdtls server is not avilable in nvim-lsp-installer'***REMOVED***
    end
end

return M
