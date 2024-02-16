-- Map leader
vim.g.mapleader = " "

-- Remap save and quit ( :w , :q )
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>!', ':q!<CR>', { noremap = true, silent = true })


-- NVIM Tree

vim.keymap.set('n', '<C-b>', '<cmd>NvimTreeToggle<cr>', {noremap = true})
