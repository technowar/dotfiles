-- Custom filetype detection
vim.filetype.add({
	extension = {
		overrides = "scss",
		variables = "scss",
	},
})

local group = vim.api.nvim_create_augroup("UserFiletypeSettings", { clear = true })

-- Go: tabs
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "go",
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.expandtab = false
	end,
})

-- PHP/Python: 4 spaces
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = { "php", "python" },
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.tabstop = 4
	end,
})
