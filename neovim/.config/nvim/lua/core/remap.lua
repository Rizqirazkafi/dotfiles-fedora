vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Remap split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
-- Adjust split sizes
vim.keymap.set('n', '<left>', '<cmd>vertical res +3<CR>')
vim.keymap.set('n', '<right>', '<cmd>vertical res -3<CR>')
vim.keymap.set('n', '<up>', '<cmd>res +3<CR>')
vim.keymap.set('n', '<down>', '<cmd>res -3<CR>')
-- Remap for exiting Nvim terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
