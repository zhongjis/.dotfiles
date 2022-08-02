local tree_cb = require'nvim-tree.con***REMOVED***g'.nvim_tree_callback

local defaultCon***REMOVED***g = {
      auto_reload_on_write = true,
      create_in_closed_folder = false,
      disable_netrw = false,
      hijack_cursor = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      ignore_buffer_on_setup = false,
      open_on_setup = false,
      open_on_setup_***REMOVED***le = false,
      open_on_tab = false,
      sort_by = "name",
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = false,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      view = {
        adaptive_size = false,
        centralize_selection = false,
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
          custom_only = false,
          list = {
            -- user mappings go here
          },
        },
      },
      renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_***REMOVED***les = "none",
        root_folder_modi***REMOVED***er = ":~",
        indent_markers = {
          enable = false,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            none = " ",
          },
        },
        icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            ***REMOVED***le = true,
            folder = true,
            folder_arrow = true,
          ***REMOVED***= true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
          ***REMOVED***= {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
        special_***REMOVED***les = { "Cargo.toml", "Make***REMOVED***le", "README.md", "readme.md" },
        symlink_destination = true,
      },
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      update_focused_***REMOVED***le = {
        enable = false,
        update_root = false,
        ignore_list = {},
      },
      ignore_ft_on_setup = {},
      system_open = {
        cmd = "",
        args = {},
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      ***REMOVED***lters = {
        dot***REMOVED***les = false,
        custom = {},
        exclude = {},
      },
      ***REMOVED***lesystem_watchers = {
        enable = false,
        debounce_delay = 50,
      },
    ***REMOVED***= {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400,
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = false,
        },
        expand_all = {
          max_folder_discovery = 300,
          exclude = {},
        },
        open_***REMOVED***le = {
          quit_on_open = false,
          resize_window = true,
          window_picker = {
            enable = true,
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              ***REMOVED***letype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "no***REMOVED***le", "terminal", "help" },
            },
          },
        },
        remove_***REMOVED***le = {
          close_window = true,
        },
      },
      trash = {
        cmd = "gio trash",
        require_con***REMOVED***rm = true,
      },
      live_***REMOVED***lter = {
        pre***REMOVED***x = "[FILTER]: ",
        always_show_folders = true,
      },
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          con***REMOVED***g = false,
          copy_paste = false,
          diagnostics = false,
        ***REMOVED***= false,
          pro***REMOVED***le = false,
          watcher = false,
        },
      }
  }

local M = {}

M.setup = function(***REMOVED***
    require'nvim-tree'.setup(defaultCon***REMOVED***g***REMOVED***
end

return M
