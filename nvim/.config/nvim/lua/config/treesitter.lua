local ts = require("nvim-treesitter")

-- Languages currently being installed, to avoid duplicate install requests
local installing = {}

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
				-- Optional: treesitter folding
				-- vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				-- vim.wo[0][0].foldmethod = "expr"
			end
		end

		if vim.list_contains(ts.get_installed(), lang) then
			start()
		elseif not installing[lang] and vim.list_contains(ts.get_available(), lang) then
			installing[lang] = true
			ts.install({ lang }):await(function()
				installing[lang] = nil
				vim.schedule(function()
					-- Start highlighting in every open buffer that uses this language
					for _, buf in ipairs(vim.api.nvim_list_bufs()) do
						if
							vim.api.nvim_buf_is_loaded(buf)
							and vim.treesitter.language.get_lang(vim.bo[buf].filetype) == lang
							and pcall(vim.treesitter.start, buf, lang)
						then
							vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
						end
					end
				end)
			end)
		end
	end,
})
