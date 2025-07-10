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
	pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
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
