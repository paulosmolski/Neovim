-- Neovim Options
vim.opt.mouse = 'a' -- Use mouse in vim
vim.opt.tabstop = 4 -- 4 spaces means one tab
vim.opt.shiftwidth = 4 -- Move by 4 characters with >> and <<
vim.opt.expandtab = true -- Convert tab to 4 spaces
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show line numbers relative to your position
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true -- Case sensitive if not the first sign
vim.opt.showmode = false -- Don't show mode - I have lualine
vim.opt.smartindent = true -- Propper indentation for newlines
vim.opt.breakindent = true -- Break long lines following indentation rules
vim.o.completeopt = "menuone,noselect" -- Completion menu options
vim.opt.termguicolors = true
vim.cmd[[autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE]] -- Don't show background
vim.cmd[[colorscheme gruvbox8]] -- Set colorscheme
vim.opt.formatoptions = vim.opt.formatoptions - 'c' - 'r' - 'o' -- Don't append comment sign after newline
vim.cmd[[autocmd FileType markdown setlocal spell spelllang=pl,en,de]]
vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.splitbelow = true
vim.opt.splitright = true
