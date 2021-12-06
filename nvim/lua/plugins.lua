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
        'nvim-telescope/telescope-fzy-native.nvim',
        'ThePrimeagen/git-worktree.nvim',

        'lewis6991/gitsigns.nvim',
        requires = use {
            'nvim-telescope/telescope.nvim',
            requires = use {'nvim-lua/plenary.nvim'}
        }
    }

    -- Theme
    use {
        'gruvbox-community/gruvbox',
        'drewtempelmeyer/palenight.vim'
    }

    -- LSP con***REMOVED***g
    use {
        'neovim/nvim-lspcon***REMOVED***g',
        'williamboman/nvim-lsp-installer',
        'mfussenegger/nvim-jdtls',
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
        'p00f/nvim-ts-rainbow',
        requires = {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
    }

    -- Code Completion
    use {
        'hrsh7th/cmp-nvim-lsp',
        {
            'hrsh7th/cmp-vsnip',
            requires = use {'hrsh7th/vim-vsnip'}
        },
        {
            'tzachar/cmp-tabnine',
            run = './install.sh',
        },
        requries = use {
            'hrsh7th/nvim-cmp',
        }
    }

    -- format
    use {
        'google/vim-maktaba',
        requires = use {
            'google/vim-codefmt',
            'google/vim-glaive',
            ft = 'java'
        }
    }
    use {'lukas-reineke/format.nvim'}

    -- UI
    use {
        'kyazdani42/nvim-tree.lua',
        'nvim-lualine/lualine.nvim',
        requires = use {'kyazdani42/nvim-web-devicons'}
    }
    use 'kosayoda/nvim-lightbulb'

    -- Other
    use {'mbbill/undotree', 'simrat39/symbols-outline.nvim', 'jiangmiao/auto-pairs', 'svermeulen/vimpeccable',
         'tpope/vim-fugitive'}

    -- Automatically set up your con***REMOVED***guration after cloning packer.nvim
    -- Put this at the end after all plugins
    if _PACKER_BOOTSTRAP then
        require('packer'***REMOVED***.sync(***REMOVED***
    end
end***REMOVED***
