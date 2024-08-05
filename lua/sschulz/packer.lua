-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

use ({ "rose-pine/nvim", as = "rose-pine", config = function()
							vim.cmd('colorscheme rose-pine')
						end
						})
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use("theprimeagen/harpoon")
  use('tpope/vim-fugitive')
  use('mfussenegger/nvim-dap')
  use('jalvesaq/vimcmdline')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
  }
}
  use {
    "williamboman/mason.nvim"
}
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
use {
    'goolord/alpha-nvim',
    requires = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}
use 'airblade/vim-gitgutter'
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use 'mg980/vim-visual-multi'
use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
end)
