-- custom setup
vim.cmd("set number")
vim.cmd("syntax on")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- disabling arrow keys in NORMAL\INSERT mode
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true})


