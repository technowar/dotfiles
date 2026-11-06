-- conform
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	require("conform").format({ async = true })
end, { desc = "Format buffer" })

-- neo-tree
vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", { desc = "Toggle file tree" })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<C-n>", builtin.grep_string, { desc = "Grep word under cursor" })
vim.keymap.set("n", "<leader>rg", builtin.live_grep, { desc = "Live grep" })

-- LSP
-- Run an LSP location request, but only open a vertical split if there is a result
local function in_vsplit(request)
	return function()
		request({
			on_list = function(res)
				vim.cmd("vsplit")
				vim.fn.setqflist({}, " ", { items = res.items, title = res.title })
				vim.cmd("cfirst")
			end,
		})
	end
end

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
	callback = function(ev)
		local function map(modes, lhs, rhs, desc)
			vim.keymap.set(modes, lhs, rhs, { buffer = ev.buf, desc = desc })
		end

		map("n", "K", vim.lsp.buf.hover, "Hover")
		map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")

		map("n", "gD", in_vsplit(vim.lsp.buf.declaration), "Declaration (vsplit)")
		map("n", "gd", in_vsplit(vim.lsp.buf.definition), "Definition (vsplit)")
		map("n", "gi", in_vsplit(vim.lsp.buf.implementation), "Implementation (vsplit)")
		map("n", "gy", in_vsplit(vim.lsp.buf.type_definition), "Type definition (vsplit)")
	end,
})
