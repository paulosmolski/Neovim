
-- Nvim comment
require('nvim_comment').setup()

-- Hop
require'hop'.setup()

-- Lualine
require'lualine'.setup {
  options = {
    theme = 'gruvbox_material',
    section_separators = {'', ''},
    component_separators = {'', ''}

  }
}

-- Packer - package manager
return require('packer').startup(function()

  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-surround' -- Add surroundings
  use 'tpope/vim-repeat' -- Improved .
  use 'mattn/emmet-vim'
  use {
  'hoob3rt/lualine.nvim', -- Better lightline
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
  use { -- Telescope - lua fuzzy finder
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'neovim/nvim-lspconfig' -- Language Server Protocol (LSP)
  use 'nvim-lua/completion-nvim' -- Completion plugin for lsp
  use 'lifepillar/vim-gruvbox8' -- theme
  use "terrortylor/nvim-comment" -- Lua commentary
  use 'mhinz/vim-startify' -- Start up page
  use 'nvim-treesitter/nvim-treesitter-refactor' -- treesitter refractoring
  use 'dkarter/bullets.vim'
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate", branch='0.5-compat'} -- Treesitter
  use {'nvim-treesitter/nvim-treesitter-textobjects', branch='0.5-compat'} -- Text objects for treesitter
  use 'davidgranstrom/nvim-markdown-preview'
  use "windwp/nvim-autopairs"
  use {
  'phaazon/hop.nvim', -- Hop - lua easy motion
  as = 'hop',
}


end)
