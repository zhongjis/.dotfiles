-- nvim-cmp setup
vim.o.completeopt = "menuone,noselect"

local has_words_before = function(***REMOVED***
  local line, col = unpack(vim.api.nvim_win_get_cursor(0***REMOVED******REMOVED***
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true***REMOVED***[1]:sub(col, col***REMOVED***:match("%s"***REMOVED*** == nil
end

local feedkey = function(key, mode***REMOVED***
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true***REMOVED***, mode, true***REMOVED***
end

local cmp = require('cmp'***REMOVED***
local cmp_kinds = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

local source_mapping = {
    nvim_lsp = "[LSP]",
    nvim_lua = "[Lua]",
    vsnip = "[VSnip]",
    cmp_tabnine = "[TN]",
}

cmp.setup {
      formatting = {
        ***REMOVED***elds = { "kind", "abbr", "menu" },
        format = function(entry, vim_item***REMOVED***
          vim_item.kind = cmp_kinds[vim_item.kind] or ""
          local menu = source_mapping[entry.source.name]
          if entry.source.name == 'cmp_tabnine' then
              if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                  menu = entry.completion_item.data.detail .. ' ' .. menu
              end
              vim_item.kind = ''
          end
          return vim_item
        end,
      },
    snippet = {
        expand = function(args***REMOVED***
            vim.fn["vsnip***REMOVED***anonymous"](args.body***REMOVED***
        end
    },
    mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback***REMOVED***
          if cmp.visible(***REMOVED*** then
            cmp.select_next_item(***REMOVED***
          ***REMOVED***if vim.fn["vsnip***REMOVED***available"](1***REMOVED*** == 1 then
            feedkey("<Plug>(vsnip-expand-or-jump***REMOVED***", ""***REMOVED***
          ***REMOVED***if has_words_before(***REMOVED*** then
            cmp.complete(***REMOVED***
          ***REMOVED***
            fallback(***REMOVED*** -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
          end
        end, { "i", "s" }***REMOVED***,

        ["<S-Tab>"] = cmp.mapping(function(***REMOVED***
          if cmp.visible(***REMOVED*** then
            cmp.select_prev_item(***REMOVED***
          ***REMOVED***if vim.fn["vsnip***REMOVED***jumpable"](-1***REMOVED*** == 1 then
            feedkey("<Plug>(vsnip-jump-prev***REMOVED***", ""***REMOVED***
          end
        end, { "i", "s" }***REMOVED***,
        ['<C-d>'] = cmp.mapping.scroll_docs(-4***REMOVED***,
        ['<C-f>'] = cmp.mapping.scroll_docs(4***REMOVED***,
        ['<C-Space>'] = cmp.mapping.complete(***REMOVED***,
        ['<C-e>'] = cmp.mapping.close(***REMOVED***,
        ['<CR>'] = cmp.mapping.con***REMOVED***rm {
            behavior = cmp.Con***REMOVED***rmBehavior.Replace,
            select = true
        }
    },
    sources = {
        { name = 'cmp_tabnine', max_item_count = 2 },
        { name = 'vsnip', max_item_count = 2 },
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
    },
    experimental = {
        ghost_text = true
    }
}

-- tabnine with nvim-cmp setup
local tabnine = require('cmp_tabnine.con***REMOVED***g'***REMOVED***
tabnine:setup({
    max_lines = 1000,
    max_num_results = 20,
    sort = true,
    run_on_every_keystroke = true,
    snippet_placeholder = '..'
}***REMOVED***
