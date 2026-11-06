local ts = require("nvim-treesitter")

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("TSAutoInstall", { clear = true }),
	callback = function(event)
		local lang = vim.treesitter.language.get_lang(event.match)
		if not lang then
			return
		end

		local function start()
			if vim.api.nvim_buf_is_valid(event.buf) and pcall(vim.treesitter.start, event.buf, lang) then
				vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end
		end

		if vim.list_contains(ts.get_installed(), lang) then
			start()
		elseif vim.list_contains(ts.get_available(), lang) then
			ts.install({ lang }):await(function()
				vim.schedule(start)
			end)
		end
	end,
})
