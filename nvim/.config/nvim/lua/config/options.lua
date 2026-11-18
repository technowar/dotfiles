local set = vim.opt

-- Mouse
set.mouse = "a"

-- Use OS clipboard (fine on macOS; use "unnamedplus" on Linux)
set.clipboard = "unnamed"

-- Use spaces rather than tabs, 1 indent == 2 spaces
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.tabstop = 2
set.smartindent = true

-- Soft-wrap long lines at word boundaries
set.wrap = true
set.linebreak = true

-- Respect modelines in files
set.modelines = 4

-- Line numbers
set.relativenumber = true
set.number = true

-- Highlight current line
set.cursorline = true

-- Case-insensitive search unless the pattern has an uppercase letter
set.ignorecase = true
set.smartcase = true

-- Hide the intro message and shorten messages, keeping the defaults
set.shortmess:append("atI")

-- Show the filename in the window titlebar
set.title = true

-- Keep 3 lines of context above/below the cursor
set.scrolloff = 3

-- Folding (folds are off until you toggle them with zi)
set.foldmethod = "indent"
set.foldnestmax = 10
set.foldenable = false
set.foldlevel = 1

-- Faster CursorHold events
set.updatetime = 300

-- Always show the sign column
set.signcolumn = "yes"

-- All matches in a line are substituted (flip the meaning of the g flag)
set.gdefault = true
