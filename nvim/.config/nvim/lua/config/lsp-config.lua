-- Apply cmp capabilities to every LSP server
vim.lsp.config("*", {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

--- Gopls
vim.lsp.config("gopls", {
	filetypes = { "go", "gomod", "gowork" },
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

--- Yaml
vim.lsp.config("yamlls", {
	filetypes = { "yaml" },
	settings = {
		yaml = {
			schemaStore = {
				enable = true,
				url = "https://www.schemastore.org/api/json/catalog.json",
			},
			-- Only apply the Kubernetes schema to matching files, not every .yaml
			schemas = {
				kubernetes = {
					"k8s/**/*.{yaml,yml}",
					"k8s-server/**/*.{yaml,yml}",
				},
			},
			validate = true,
			completion = true,
			hover = true,
			format = {
				enable = true,
			},
		},
	},
})

vim.lsp.enable({
	"emmet_language_server",
	"gopls",
	"lua_ls",
	"ts_ls",
	"yamlls",
})
