local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
lspconfig.gopls.setup({
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("go.mod", "go.work", ".git"),
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
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.ts_ls.setup({
	capabilities = capabilities,
})
lspconfig.emmet_language_server.setup({
	capabilities = capabilities,
})
