return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	config = function()
		require("config.telescope")
	end,
}
