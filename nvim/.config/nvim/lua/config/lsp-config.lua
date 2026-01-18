local capabilities = require("cmp_nvim_lsp").default_capabilities()
--- Emmet
vim.lsp.config("emmet_language_server", {
	capabilities = capabilities,
})

--- Gopls
vim.lsp.config("gopls", {
	capabilities = capabilities,
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

--- Lua
vim.lsp.config("lua_ls", {
	capabilities = capabilities,
})

--- JS/TS
vim.lsp.config("ts_ls", {
	capabilities = capabilities,
})

--- Yaml
vim.lsp.config("yamlls", {
	capabilities = capabilities,
	settings = {
		schemaStore = {
			enable = true,
			url = "https://www.schemastore.org/api/json/catalog.json",
		},
		schemas = {
			["kubernetes"] = "*.k8s.yaml",
		},
		format = {
			enable = true,
		},
		validate = true,
		completion = true,
		hover = true,
	},
})

vim.lsp.enable({ "emmet_language_server", "gopls", "lua_ls", "ts_ls", "yamlls" })
