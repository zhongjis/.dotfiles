require'nvim-treesitter.con***REMOVED***gs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers***REMOVED***, or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`***REMOVED***
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation***REMOVED***.
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_***REMOVED***le_lines = nil, -- Do not enable for ***REMOVED***les with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
