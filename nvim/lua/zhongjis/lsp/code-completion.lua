-- nvim-cmp setup
vim.o.completeopt = "menuone,noselect"

local cmp = require('cmp'***REMOVED***
local lspkind = require('lspkind'***REMOVED***

local source_mapping = {
  buffer = "[Buffer]",
  nvim_lsp = "[LSP]",
  nvim_lua = "[Lua]",
  luasnip = "[LuaSnip]",
  cmp_tabnine = "[TN]",
  path = "[Path]"
}

cmp.setup {
  formatting = {
    format = function(entry, vim_item***REMOVED***
      vim_item.kind = lspkind.presets.default[vim_item.kind]
      local menu = source_mapping[entry.source.name]
      if entry.source.name == 'cmp_tabnine' then
        if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
          menu = entry.completion_item.data.detail .. ' ' .. menu
        end
        vim_item.kind = ''
      end
      vim_item.menu = menu
      return vim_item
    end
  },
  snippet = {
    expand = function(args***REMOVED***
        -- vim.fn["vsnip***REMOVED***anonymous"](args.body***REMOVED*** -- For `vsnip` users.
        require('luasnip'***REMOVED***.lsp_expand(args.body***REMOVED*** -- For `luasnip` users.
        -- vim.fn["UltiSnips***REMOVED***Anon"](args.body***REMOVED*** -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body***REMOVED*** -- For `snippy` users.
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(***REMOVED***, { 'i', 's' }***REMOVED***,
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(***REMOVED***, { 'i', 's' }***REMOVED***,
    ['<C-d>'] = cmp.mapping.scroll_docs(-4***REMOVED***,
    ['<C-f>'] = cmp.mapping.scroll_docs(4***REMOVED***,
    ['<C-Space>'] = cmp.mapping.complete(***REMOVED***,
    ['<C-e>'] = cmp.mapping.close(***REMOVED***,
    ['<CR>'] = cmp.mapping.con***REMOVED***rm {
      behavior = cmp.Con***REMOVED***rmBehavior.Replace,
      select = true,
    },
  },
  sources = cmp.con***REMOVED***g.sources({
    { name = 'nvim_lsp' },
    { name = 'cmp_tabnine' },
    -- { name = 'vsnip' }, -- For vsnip users.
    { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  }***REMOVED***,
}

-- tabnine with nvim-cmp setup
local tabnine = require('cmp_tabnine.con***REMOVED***g'***REMOVED***
tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
  run_on_every_keystroke = true;
  snippet_placeholder = '..';
}***REMOVED***
