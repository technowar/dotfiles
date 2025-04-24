-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- let ; be :
vim.keymap.set("n", ";", ":")

-- Swap lines
vim.keymap.set("n", "<C-j>", ":m .+1<CR>")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>")

-- Treat long lines as break lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
