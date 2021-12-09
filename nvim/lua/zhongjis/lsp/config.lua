vim.lsp.set_log_level("info"***REMOVED***

-- LSP settings
local default_on_attach = function(_, bufnr***REMOVED***
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc'***REMOVED***
    require('zhongjis.mapping'***REMOVED***.lsp_attach_mapping(bufnr***REMOVED***
end

-- nvim-cmp supports additional completion capabilities
local capabilities =require('cmp_nvim_lsp'***REMOVED***.update_capabilities(vim.lsp.protocol.make_client_capabilities(***REMOVED******REMOVED***

-- Enable the following language servers
local lsp_installer = require("nvim-lsp-installer"***REMOVED***
lsp_installer.on_server_ready(function(server***REMOVED***
    local opts = {
        on_attach = default_on_attach,
        capabilities = capabilities
    }

    if server.name == "jdtls" then
        opts.settings = {
            java = {
                signatureHelp = {
                    enabled = true
                }
            }
        }
    end
    if server.name == "sumneko_lua" then
        opts.settings = {
            Lua = {
                diagnostics = {
                    globals = {'vim'}
                }
            }
        }
    end

    -- This setup(***REMOVED*** function is exactly the same as lspcon***REMOVED***g's setup function.
    -- Refer to https://github.com/neovim/nvim-lspcon***REMOVED***g/blob/master/doc/server_con***REMOVED***gurations.md
    server:setup(opts***REMOVED***
end***REMOVED***

require"format".setup {
    vim = {{
        cmd = {"luafmt -w replace"},
        start_pattern = "^lua << EOF$",
        end_pattern = "^EOF$"
    }},
    vimwiki = {{
        cmd = {"prettier -w --parser babel"},
        start_pattern = "^{{{javascript$",
        end_pattern = "^}}}$"
    }},
    lua = {{
        cmd = {function(***REMOVED***le***REMOVED***
            return string.format("luafmt -l %s -w replace %s", vim.bo.textwidth, ***REMOVED***le***REMOVED***
        end}
    }},
    go = {{
        cmd = {"gofmt -w", "goimports -w"},
        temp***REMOVED***le_post***REMOVED***x = ".tmp"
    }},
    javascript = {{
        cmd = {"prettier -w", "./node_modules/.bin/eslint --***REMOVED***x"}
    }},
    markdown = {{
        cmd = {"prettier -w"}
    }, {
        cmd = {"black"},
        start_pattern = "^```python$",
        end_pattern = "^```$",
        target = "current"
    }}
}
