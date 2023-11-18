-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

-- every spec ***REMOVED***le under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin ***REMOVED***les, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the con***REMOVED***guration of LazyVim plugins
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Con***REMOVED***gure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- change trouble con***REMOVED***g
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- disable trouble
  { "folke/trouble.nvim", enabled = false },

  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    con***REMOVED***g = true,
  },

  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.Con***REMOVED***gSchema
    opts = function(_, opts***REMOVED***
      table.insert(opts.sources, { name = "emoji" }***REMOVED***
    end,
  },

  -- change some telescope options and a keymap to browse plugin ***REMOVED***les
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin ***REMOVED***les
      -- stylua: ignore
      {
        "<leader>fp",
        function(***REMOVED*** require("telescope.builtin"***REMOVED***.***REMOVED***nd_***REMOVED***les({ cwd = require("lazy.core.con***REMOVED***g"***REMOVED***.options.root }***REMOVED*** end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_con***REMOVED***g = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      con***REMOVED***g = function(***REMOVED***
        require("telescope"***REMOVED***.load_extension("fzf"***REMOVED***
      end,
    },
  },

  -- add pyright to lspcon***REMOVED***g
  {
    "neovim/nvim-lspcon***REMOVED***g",
    ---@class PluginLspOpts
    opts = {
      ---@type lspcon***REMOVED***g.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspcon***REMOVED***g
        pyright = {},
      },
    },
  },

  -- add tsserver and setup with typescript.nvim instead of lspcon***REMOVED***g
  {
    "neovim/nvim-lspcon***REMOVED***g",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function(***REMOVED***
        require("lazyvim.util"***REMOVED***.on_attach(function(_, buffer***REMOVED***
          -- stylua: ignore
          vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" }***REMOVED***
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer }***REMOVED***
        end***REMOVED***
      end,
    },
    ---@class PluginLspOpts
    opts = {
      ---@type lspcon***REMOVED***g.options
      servers = {
        -- tsserver will be automatically installed with mason and loaded with lspcon***REMOVED***g
        tsserver = {},
      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspcon***REMOVED***g
      ---@type table<string, fun(server:string, opts:_.lspcon***REMOVED***g.options***REMOVED***:boolean?>
      setup = {
        -- example to setup with typescript.nvim
        tsserver = function(_, opts***REMOVED***
          require("typescript"***REMOVED***.setup({ server = opts }***REMOVED***
          return true
        end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts***REMOVED*** end,
      },
    },
  },

  -- for typescript, LazyVim also includes extra specs to properly setup lspcon***REMOVED***g,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default con***REMOVED***g, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts***REMOVED***
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      }***REMOVED***
    end,
  },

  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts***REMOVED***
      table.insert(opts.sections.lualine_x, "😄"***REMOVED***
    end,
  },

  -- or you can return new options to override all the defaults
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(***REMOVED***
      return {
        --[[add your custom lualine con***REMOVED***g here]]
      }
    end,
  },

  -- use mini.starter instead of alpha
  { import = "lazyvim.plugins.extras.ui.mini-starter" },

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  -- Use <tab> for completion and snippets (supertab***REMOVED***
  -- ***REMOVED***rst: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function(***REMOVED***
      return {}
    end,
  },
  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.Con***REMOVED***gSchema
    opts = function(_, opts***REMOVED***
      local has_words_before = function(***REMOVED***
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0***REMOVED******REMOVED***
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true***REMOVED***[1]:sub(col, col***REMOVED***:match("%s"***REMOVED*** == nil
      end

      local luasnip = require("luasnip"***REMOVED***
      local cmp = require("cmp"***REMOVED***

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback***REMOVED***
          if cmp.visible(***REMOVED*** then
            cmp.select_next_item(***REMOVED***
            -- You could replace the expand_or_jumpable(***REMOVED*** calls with expand_or_locally_jumpable(***REMOVED***
            -- this way you will only jump inside the snippet region
          ***REMOVED***if luasnip.expand_or_jumpable(***REMOVED*** then
            luasnip.expand_or_jump(***REMOVED***
          ***REMOVED***if has_words_before(***REMOVED*** then
            cmp.complete(***REMOVED***
          ***REMOVED***
            fallback(***REMOVED***
          end
        end, { "i", "s" }***REMOVED***,
        ["<S-Tab>"] = cmp.mapping(function(fallback***REMOVED***
          if cmp.visible(***REMOVED*** then
            cmp.select_prev_item(***REMOVED***
          ***REMOVED***if luasnip.jumpable(-1***REMOVED*** then
            luasnip.jump(-1***REMOVED***
          ***REMOVED***
            fallback(***REMOVED***
          end
        end, { "i", "s" }***REMOVED***,
      }***REMOVED***
    end,
  },
}
