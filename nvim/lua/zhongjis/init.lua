require('zhongjis.gitsigns'***REMOVED***
require("zhongjis.telescope"***REMOVED***
require("zhongjis.treesitter"***REMOVED***
require("zhongjis.lualine"***REMOVED***
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
