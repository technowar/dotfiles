require("conform").setup({
	formatters_by_ft = {
		--- Lua
		lua = { "stylua" },

		--- Bash
		bash = { "shfmt", "shellcheck" },

		--- Go
		go = { "gofmt", "goimports" },

		--- HTML
		html = { "prettier" },

		--- JS/TS
		javascript = { "prettier", "eslint_d" },
		javascriptreact = { "prettier", "eslint_d" },
		typescript = { "prettier", "eslint_d" },
		typescriptreact = { "prettier", "eslint_d" },
		["*"] = { "codespell" },
		["_"] = { "trim_newlines", "trim_whitespace" },
	},
	default_format_ops = { lsp_format = "fallback" },
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 1000,
	},
	formatters = {
		shfmt = {
			prepend_args = { "-i", "2" },
		},
	},
})
