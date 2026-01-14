require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git/",
			".cache/",
			".DS_Store",
			"%.jpg",
			"%.jpeg",
			"%.png",
			"%.svg",
			"%.webp",
			"%.gif",
			"%.ico",
			"%.otf",
			"%.ttf",
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		grep_string = {
			additional_args = { "--hidden" },
		},
		live_grep = {
			additional_args = { "--hidden" },
		},
	},
})
