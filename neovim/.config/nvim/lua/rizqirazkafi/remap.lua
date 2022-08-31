local nnoremap = require("rizqirazkafi.keymap").nnoremap

-- Open Netrm filemanager
nnoremap("<leader>pv", "<cmd>Ex<CR>")
-- Remap splits navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")
-- Adjust split sizes
nnoremap("<left>", "<cmd>vertical res +3<CR>")
nnoremap("<right>", "<cmd>vertical res -3<CR>")
nnoremap("<up>", "<cmd>res +3<CR>")
nnoremap("<down>", "<cmd>res -3<CR>")
-- FZF Keyybinding
nnoremap("<C-p>","<cmd>Files<CR>")
