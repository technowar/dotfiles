-- Buffer
-- JSON files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.json" },
	callback = function()
		vim.opt_local.filetype = json
		vim.opt_local.syntax = javascript
	end,
})

-- CSS files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.overrides", "*.variables" },
	callback = function()
		vim.opt_local.filetype = scss
		vim.opt_local.syntax = css
	end,
})

-- JS/TS files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.jsx", "*.ts", "*.tsx" },
	callback = function()
		vim.opt_local.filetype = typescript
		vim.opt_local.syntax = javascript
	end,
})

-- FileType
-- Go files
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.expandtab = false
	end,
})

-- PHP/Python files
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "php", "python" },
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.expandtab = true
	end,
})

-- Plugin configurations
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
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
	end,
})
