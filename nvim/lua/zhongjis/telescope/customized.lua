local M = {}

-- customized funcs
M.search_dot***REMOVED***les = function(***REMOVED***
    require("telescope.builtin"***REMOVED***.***REMOVED***nd_***REMOVED***les({
        prompt_title = "< VimRC >",
        cwd = vim.env.DOTFILES,
        hidden = true
    }***REMOVED***
end

return M
