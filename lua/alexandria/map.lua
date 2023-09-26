vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>u", vim.cmd.undo)
vim.keymap.set("t", "<ESC>", "<C-\\><C-N>:q<CR>")

vim.wo.number = true
vim.wo.relativenumber = true
