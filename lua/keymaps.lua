-- Keymaps
options = { noremap = true }

-- Telescope
vim.api.nvim_set_keymap('n', '<C-b>', ':Telescope file_browser<cr>', options)
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope find_files<cr>', options)

-- Clear selection
vim.api.nvim_set_keymap('n', '<C-q>', ':noh<cr>', options)

-- Redo
vim.api.nvim_set_keymap('n', 't', '<C-r>', options)

-- Tab key in menu
vim.cmd[[inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"]]
vim.cmd[[inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"]]

-- Hop
vim.api.nvim_set_keymap('n', ';', "<cmd>lua require'hop'.hint_words()<cr>", {})

-- Switch panes
vim.api.nvim_set_keymap('', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('', '<C-l>', '<C-w>l', options)
