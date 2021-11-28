-- packer bootstrap
local fn = vim.fn
local install_path = fn.stdpath('data'***REMOVED***..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path***REMOVED******REMOVED*** > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}***REMOVED***
end

vim.cmd([[
  augroup packer_user_con***REMOVED***g
    autocmd!
    autocmd BufWritePost plugins.lua source <a***REMOVED***le> | PackerCompile
  augroup end
]]***REMOVED***

return require('packer'***REMOVED***.startup(function(use***REMOVED***
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope-fzy-native.nvim',
    'ThePrimeagen/git-worktree.nvim',
    requires = use {
      'nvim-telescope/telescope.nvim',
      requires = {'nvim-lua/plenary.nvim'}
    }
  }

  -- Theme
  use 'gruvbox-community/gruvbox'
  use 'drewtempelmeyer/palenight.vim'

  -- LSP con***REMOVED***g
  use {
    'neovim/nvim-lspcon***REMOVED***g',
    'williamboman/nvim-lsp-installer',
    'mfussenegger/nvim-jdtls'
  }

  -- Code Completion
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'},
    'saadparwaiz1/cmp_luasnip',
    requries = use {
      'hrsh7th/nvim-cmp',
      requires = {
        'L3MON4D3/LuaSnip',
        'onsails/lspkind-nvim',
      }
    }
  }

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- google vim-codefmt
  use {
    'google/vim-maktaba',
    requires = {
      'google/vim-codefmt',
      'google/vim-glaive',
    }
  }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requries = {'kyazdani42/nvim-web-devicons'}
  }

  -- Git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    -- tag = 'release' -- To use the latest release
  }

  --  lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Other
  use {
    'mbbill/undotree',
    'simrat39/symbols-outline.nvim',
    'jiangmiao/auto-pairs',
    'svermeulen/vimpeccable',
  }

  -- Automatically set up your con***REMOVED***guration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer'***REMOVED***.sync(***REMOVED***
  end
end***REMOVED***
