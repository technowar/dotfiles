-- Assign set to vim.opt
local set = vim.opt

-- Mouse
set.mouse = a

-- Use OS clipboard
set.clipboard = unnamed

-- Set syntax
set.syntax = on

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
set.number = true

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

-- All matches in a line are substituted
set.gdefault = true
