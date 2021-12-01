local tree_cb = require'nvim-tree.con***REMOVED***g'.nvim_tree_callback

local con***REMOVED***g = {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = true,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = true,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_***REMOVED***le = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  ***REMOVED***lters = {
    dot***REMOVED***les = true,
    custom = {}
  },
***REMOVED***= {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = "15%",
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = true,
      list = {
        { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit"***REMOVED*** },
        { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd"***REMOVED*** },
        { key = "<C-v>",                        cb = tree_cb("vsplit"***REMOVED*** },
        { key = "<C-x>",                        cb = tree_cb("split"***REMOVED*** },
        { key = "<C-t>",                        cb = tree_cb("tabnew"***REMOVED*** },
        { key = "<",                            cb = tree_cb("prev_sibling"***REMOVED*** },
        { key = ">",                            cb = tree_cb("next_sibling"***REMOVED*** },
        { key = "P",                            cb = tree_cb("parent_node"***REMOVED*** },
        { key = "<BS>",                         cb = tree_cb("close_node"***REMOVED*** },
        { key = "<S-CR>",                       cb = tree_cb("close_node"***REMOVED*** },
        { key = "<Tab>",                        cb = tree_cb("preview"***REMOVED*** },
        { key = "K",                            cb = tree_cb("***REMOVED***rst_sibling"***REMOVED*** },
        { key = "J",                            cb = tree_cb("last_sibling"***REMOVED*** },
        { key = "I",                            cb = tree_cb("toggle_ignored"***REMOVED*** },
        { key = "H",                            cb = tree_cb("toggle_dot***REMOVED***les"***REMOVED*** },
        { key = "R",                            cb = tree_cb("refresh"***REMOVED*** },
        { key = "a",                            cb = tree_cb("create"***REMOVED*** },
        { key = "d",                            cb = tree_cb("remove"***REMOVED*** },
        { key = "r",                            cb = tree_cb("rename"***REMOVED*** },
        { key = "<C-r>",                        cb = tree_cb("full_rename"***REMOVED*** },
        { key = "x",                            cb = tree_cb("cut"***REMOVED*** },
        { key = "c",                            cb = tree_cb("copy"***REMOVED*** },
        { key = "p",                            cb = tree_cb("paste"***REMOVED*** },
        { key = "y",                            cb = tree_cb("copy_name"***REMOVED*** },
        { key = "Y",                            cb = tree_cb("copy_path"***REMOVED*** },
        { key = "gy",                           cb = tree_cb("copy_absolute_path"***REMOVED*** },
        { key = "[c",                           cb = tree_cb("prev_git_item"***REMOVED*** },
        { key = "]c",                           cb = tree_cb("next_git_item"***REMOVED*** },
        { key = "-",                            cb = tree_cb("dir_up"***REMOVED*** },
        { key = "s",                            cb = tree_cb("system_open"***REMOVED*** },
        { key = "q",                            cb = tree_cb("close"***REMOVED*** },
        { key = "g?",                           cb = tree_cb("toggle_help"***REMOVED*** },
      }
    }
  }
}

local M = {}

M.setup = function(***REMOVED***
    require'nvim-tree'.setup(con***REMOVED***g***REMOVED***
end

return M
