-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}***REMOVED*** ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"'***REMOVED***
  return
end

vim.api.nvim_command('packadd packer.nvim'***REMOVED***

local no_errors, error_msg = pcall(function(***REMOVED***

  local time
  local pro***REMOVED***le_info
  local should_pro***REMOVED***le = false
  if should_pro***REMOVED***le then
    local hrtime = vim.loop.hrtime
    pro***REMOVED***le_info = {}
    time = function(chunk, start***REMOVED***
      if start then
        pro***REMOVED***le_info[chunk] = hrtime(***REMOVED***
      ***REMOVED***
        pro***REMOVED***le_info[chunk] = (hrtime(***REMOVED*** - pro***REMOVED***le_info[chunk]***REMOVED*** / 1e6
      end
    end
  ***REMOVED***
    time = function(chunk, start***REMOVED*** end
  end
  
local function save_pro***REMOVED***les(threshold***REMOVED***
  local sorted_times = {}
  for chunk_name, time_taken in pairs(pro***REMOVED***le_info***REMOVED*** do
    sorted_times[***REMOVED***sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b***REMOVED*** return a[2] > b[2] end***REMOVED***
  local results = {}
  for i, elem in ipairs(sorted_times***REMOVED*** do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.pro***REMOVED***le_output = results
end

time([[Luarocks path setup]], true***REMOVED***
local package_path_str = "/Users/zshen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/zshen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/zshen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/zshen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/zshen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.***REMOVED***nd(package.path, package_path_str, 1, true***REMOVED*** then
  package.path = package.path .. ';' .. package_path_str
end

if not string.***REMOVED***nd(package.cpath, install_cpath_pattern, 1, true***REMOVED*** then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false***REMOVED***
time([[try_loadstring de***REMOVED***nition]], true***REMOVED***
local function try_loadstring(s, component, name***REMOVED***
  local success, result = pcall(loadstring(s***REMOVED******REMOVED***
  if not success then
    vim.schedule(function(***REMOVED***
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {}***REMOVED***
    end***REMOVED***
  end
  return result
end

time([[try_loadstring de***REMOVED***nition]], false***REMOVED***
time([[De***REMOVED***ning packer_plugins]], true***REMOVED***
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["git-worktree.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-jdtls"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/opt/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspcon***REMOVED***g"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-lspcon***REMOVED***g",
    url = "https://github.com/neovim/nvim-lspcon***REMOVED***g"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-codefmt"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vim-codefmt",
    url = "https://github.com/google/vim-codefmt"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-glaive"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vim-glaive",
    url = "https://github.com/google/vim-glaive"
  },
  ["vim-maktaba"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vim-maktaba",
    url = "https://github.com/google/vim-maktaba"
  },
  vimpeccable = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vimpeccable",
    url = "https://github.com/svermeulen/vimpeccable"
  }
}

time([[De***REMOVED***ning packer_plugins]], false***REMOVED***
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[De***REMOVED***ning lazy-load ***REMOVED***letype autocommands]], true***REMOVED***
vim.cmd [[au FileType java ++once lua require("packer.load"***REMOVED***({'nvim-jdtls'}, { ft = "java" }, _G.packer_plugins***REMOVED***]]
time([[De***REMOVED***ning lazy-load ***REMOVED***letype autocommands]], false***REMOVED***
vim.cmd("augroup END"***REMOVED***
if should_pro***REMOVED***le then save_pro***REMOVED***les(***REMOVED*** end

end***REMOVED***

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your con***REMOVED***g for correctness" | echohl None'***REMOVED***
end
