require("conform").setup({
	formatters_by_ft = {
		--- Lua
		lua = { "stylua" },

		--- Shell
		sh = { "shfmt" },
		bash = { "shfmt" },

		--- Go
		go = { "goimports" },

		--- Web
		html = { "prettier" },
		css = { "prettier" },
		scss = { "prettier" },
		json = { "prettier" },
		jsonc = { "prettier" },
		markdown = { "prettier" },

		--- JS/TS
		javascript = { "prettier", "eslint_d" },
		javascriptreact = { "prettier", "eslint_d" },
		typescript = { "prettier", "eslint_d" },
		typescriptreact = { "prettier", "eslint_d" },

		--- Filetypes with no formatter above
		["_"] = { "trim_whitespace", "trim_newlines" },
	},
	default_format_opts = { lsp_format = "fallback" },
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 1000,
	},
	formatters = {
		shfmt = {
			prepend_args = { "-i", "2" },
		},
		-- Only run eslint_d in projects that have an ESLint config
		eslint_d = {
			condition = function(_, ctx)
				return vim.fs.find({
					"eslint.config.js",
					"eslint.config.mjs",
					"eslint.config.cjs",
					".eslintrc",
					".eslintrc.js",
					".eslintrc.cjs",
					".eslintrc.json",
					".eslintrc.yaml",
					".eslintrc.yml",
				}, { path = ctx.filename, upward = true })[1] ~= nil
			end,
		},
	},
})
