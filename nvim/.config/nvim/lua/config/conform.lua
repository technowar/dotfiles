require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier", stop_after_first = true },
		["*"] = { "codespell" },
		["_"] = { "trim_newlines", "trim_whitespace" },
	},
	default_format_ops = { lsp_format = "fallback" },
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
	formatters = {
		shfmt = {
			prepend_args = { "-i", "2" },
		},
	},
})
