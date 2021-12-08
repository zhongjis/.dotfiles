-- auto compile everytime when this ***REMOVED***le changes
vim.cmd([[
  augroup packer_user_con***REMOVED***g
    autocmd!
    autocmd BufWritePost plugins.lua source <a***REMOVED***le> | PackerCompile
  augroup end
]]***REMOVED***

-- packer bootstrap
local fn = vim.fn
local install_path = fn.stdpath('data'***REMOVED*** .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path***REMOVED******REMOVED*** > 0 then
    _PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}***REMOVED***
end

return require('packer'***REMOVED***.startup(function(use***REMOVED***
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-telescope/telescope-fzy-native.nvim',
            'ThePrimeagen/git-worktree.nvim',
            'nvim-lua/plenary.nvim'
        }
    }


    -- LSP
    use {
        'neovim/nvim-lspcon***REMOVED***g',
        requires = {
            'williamboman/nvim-lsp-installer',
            'mfussenegger/nvim-jdtls',

        }
    }
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        con***REMOVED***g = function(***REMOVED***
            require("trouble"***REMOVED***.setup {
              -- your con***REMOVED***guration comes here
              -- or leave it empty to use the default settings
              -- refer to the con***REMOVED***guration section below
            }
        end
    }
    use {
        'RishabhRD/lspactions',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-lua/popup.nvim',
            'tjdevries/astronauta.nvim',
        }
    }

    -- Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = 'p00f/nvim-ts-rainbow',
    }

    -- Code Completion
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/vim-vsnip',
        requries = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-vsnip',
            'tzachar/cmp-tabnine',
        },
    }
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp', requires = 'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-vsnip', requires = 'hrsh7th/nvim-cmp'}

    -- format
    use {
        'google/vim-maktaba',
        'google/vim-codefmt',
        'google/vim-glaive',
        ft = 'java'
    }
    use {'lukas-reineke/format.nvim'}

    -- Other Feature
    use {
        'mbbill/undotree',
        'simrat39/symbols-outline.nvim',
        'jiangmiao/auto-pairs',
        'svermeulen/vimpeccable',
        'tpope/vim-fugitive'
     }

    -- Look
    use {
        'gruvbox-community/gruvbox',
        'drewtempelmeyer/palenight.vim',
        'sainnhe/gruvbox-material'
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'kosayoda/nvim-lightbulb'


    -- Automatically set up your con***REMOVED***guration after cloning packer.nvim
    -- Put this at the end after all plugins
    if _PACKER_BOOTSTRAP then
        require('packer'***REMOVED***.sync(***REMOVED***
    end
end***REMOVED***
