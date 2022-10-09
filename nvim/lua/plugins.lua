local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd([[ packadd packer.nvim ]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'ellisonleao/gruvbox.nvim' }
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use { 
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
end)
