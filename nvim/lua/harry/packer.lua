-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({
  "princejoogie/dir-telescope.nvim",
  -- telescope.nvim is a required dependency
  requires = {"nvim-telescope/telescope.nvim"},
  config = function()
    require("dir-telescope").setup({
      -- these are the default options set
      hidden = true,
      no_ignore = false,
      show_preview = true,
    })
  end
});

use "rebelot/kanagawa.nvim"

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground', {run = ':TSUpdate'})
use 'mbbill/undotree'

end)
