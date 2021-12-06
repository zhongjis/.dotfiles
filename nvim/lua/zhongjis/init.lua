require("zhongjis.ui"***REMOVED***
require("zhongjis.mapping"***REMOVED***
require("zhongjis.telescope"***REMOVED***
require("zhongjis.lsp"***REMOVED***

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb(***REMOVED***]]

P = function(v***REMOVED***
    print(vim.inspect(v***REMOVED******REMOVED***
    return v
end

if pcall(require, 'plenary'***REMOVED*** then
    RELOAD = require('plenary.reload'***REMOVED***.reload_module

    R = function(name***REMOVED***
        RELOAD(name***REMOVED***
        return require(name***REMOVED***
    end
end
