-- conform
vim.keymap.set("n", "<leader>f", require("conform").format, {})

-- neo-tree
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", {})

-- telescope
vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, {})
vim.keymap.set("n", "<leader>rg", require("telescope.builtin").live_grep, {})
