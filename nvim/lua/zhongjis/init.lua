require("zhongjis.ui"***REMOVED***
require("zhongjis.mapping"***REMOVED***.setup(***REMOVED***
require("zhongjis.telescope"***REMOVED***.setup(***REMOVED***
require("zhongjis.lsp"***REMOVED***

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
