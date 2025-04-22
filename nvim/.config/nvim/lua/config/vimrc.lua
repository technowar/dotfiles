-- Mappings
-- Assign set to vim.opt
local set = vim.opt

-- Don’t add empty newline at the end of files
set.endofline = false

-- Use tabs rather than spaces
set.expandtab = true

-- 1 tab == 2 spaces
set.shiftwidth = 2
set.softtabstop = 2
set.tabstop = 2

-- Linebreak on 500 characters
set.linebreak = true
set.textwidth = 500
set.smartindent = true

-- Respect modeline in files
set.modelines = 4

-- Set relativenumber
set.relativenumber = true

-- Highlight current line
set.cursorline = true

-- Ignore case of searches
set.ignorecase = true

-- Don’t show the intro message when starting Vim
set.shortmess = atI

-- Show the filename in the window titlebar
set.title = true

-- Start scrolling three lines before the horizontal window border
set.scroll = 3

-- Folding settings
set.foldmethod = indent
set.foldnestmax = 10
set.foldenable = false
set.foldlevel = 1

-- Better display for messages
set.cmdheight = 2

-- Smaller updatetime for CursorHold & CursorHoldI
set.updatetime = 300

-- Always show signcolumns
set.signcolumn = yes

-- Set filetype
set.filetype = on

-- let ; be :
vim.keymap.set("n", ";", ":")

-- Automatic commands
-- Buffer
-- JSON files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.json" },
	callback = function()
		vim.opt_local.filetype = json
		vim.opt_local.syntax = javascript
	end
})

-- CSS files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.overrides", "*.variables" },
	callback = function()
		vim.opt_local.filetype = scss
		vim.opt_local.syntax = css
	end
})

-- JS/TS files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.jsx", "*.ts", "*.tsx" },
	callback = function()
		vim.opt_local.filetype = typescript
		vim.opt_local.syntax = javascript
	end
})

-- FileType
-- Go files
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.expandtab = false
	end
})

-- PHP/Python files
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "php", "python" },
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.expandtab = true
	end
})
