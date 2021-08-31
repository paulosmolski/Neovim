-- Keymaps
options = { noremap = true }
vim.api.nvim_set_keymap('n', '<C-b>', ':Telescope file_browser<cr>', options)
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope find_files<cr>', options)
vim.api.nvim_set_keymap('n', '<C-q>', ':noh<cr>', options)
vim.api.nvim_set_keymap('n', 't', '<C-r>', options)
vim.cmd[[inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"]]
vim.cmd[[inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"]]
