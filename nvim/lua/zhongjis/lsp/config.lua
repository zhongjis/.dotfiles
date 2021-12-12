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

    if server.name ~= "jdtls" then
        server:setup(opts***REMOVED***
    end
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

local M = {}

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
