require("mason-lspconfig").setup({
	ensure_installed = {
		"emmet_language_server",
		"gopls",
		"lua_ls",
		"ts_ls",
	},
})
