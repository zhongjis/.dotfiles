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
  local success, result = pcall(loadstring(s***REMOVED***, name, _G.packer_plugins[name]***REMOVED***
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
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/astronauta.nvim",
    url = "https://github.com/tjdevries/astronauta.nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["format.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
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
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  lspactions = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/lspactions",
    url = "https://github.com/RishabhRD/lspactions"
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
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
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
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
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
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
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
  ["trouble.nvim"] = {
    con***REMOVED***g = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
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
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimpeccable = {
    loaded = true,
    path = "/Users/zshen/.local/share/nvim/site/pack/packer/start/vimpeccable",
    url = "https://github.com/svermeulen/vimpeccable"
  }
}

time([[De***REMOVED***ning packer_plugins]], false***REMOVED***
-- Con***REMOVED***g for: trouble.nvim
time([[Con***REMOVED***g for trouble.nvim]], true***REMOVED***
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "con***REMOVED***g", "trouble.nvim"***REMOVED***
time([[Con***REMOVED***g for trouble.nvim]], false***REMOVED***
if should_pro***REMOVED***le then save_pro***REMOVED***les(***REMOVED*** end

end***REMOVED***

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your con***REMOVED***g for correctness" | echohl None'***REMOVED***
end
