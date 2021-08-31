
-- Nvim comment
require('nvim_comment').setup()

-- Hop
require'hop'.setup()
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1()<cr>", {})

-- Lualine
require'lualine'.setup {
  options = {
    theme = 'material',
    section_separators = {'', ''},
    component_separators = {'', ''}

  }
}

-- Packer - package manager
return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'mattn/emmet-vim'
  use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'lifepillar/vim-gruvbox8'
  use "terrortylor/nvim-comment"
  use 'mhinz/vim-startify'
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate", branch='0.5-compat'}
  use {'nvim-treesitter/nvim-treesitter-textobjects', branch='0.5-compat'}


  use {
  'phaazon/hop.nvim',
  as = 'hop',
}

end)
