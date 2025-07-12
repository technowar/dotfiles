-- conform
vim.keymap.set("n", "<leader>f", require("conform").format, {})

-- neo-tree
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", {})

-- telescope
vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, {})
vim.keymap.set("n", "<C-n>", require("telescope.builtin").grep_string, {})
vim.keymap.set("n", "<leader>rg", require("telescope.builtin").live_grep, {})

-- nvim-lspconfig
vim.api.nvim_create_autocmd({ "LspAttach" }, {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "fd", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "df", vim.diagnostic.open_float, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
	end,
})
