-- telescope
local actions = require('telescope.actions'***REMOVED***
require('telescope'***REMOVED***.setup {
    defaults = {
        ***REMOVED***le_sorter = require('telescope.sorters'***REMOVED***.get_fzy_sorter,
        prompt_pre***REMOVED***x = ' >',
        color_devicons = true,

        ***REMOVED***le_previewer = require('telescope.previewers'***REMOVED***.vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers'***REMOVED***.vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers'***REMOVED***.vim_buffer_qflist.new,

        initial_mode = 'normal',

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist
            }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_***REMOVED***le_sorter = true
        }
    }
}

-- telescope extensions
require('telescope'***REMOVED***.load_extension('fzy_native'***REMOVED***
require("git-worktree"***REMOVED***.setup {
    change_directory_command = "cd",
    update_on_change = true,
    update_on_change_command = "e .",
    clearjumps_on_change = true,
    autopush = false
}
require("telescope"***REMOVED***.load_extension("git_worktree"***REMOVED***

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
