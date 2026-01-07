local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("emmet_language_server", {
	capabilities = capabilities,
})
vim.lsp.config("gopls", {
	capabilities = capabilities,
	root_dir = require("lspconfig.util").root_pattern("go.mod", "go.work", ".git"),
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			usePlaceholders = true,
		},
	},
})
vim.lsp.config("lua_ls", {
	capabilities = capabilities,
})
vim.lsp.config("ts_ls", {
	capabilities = capabilities,
})

vim.lsp.enable({ "emmet_language_server", "gopls", "lua_ls", "ts_ls" })
