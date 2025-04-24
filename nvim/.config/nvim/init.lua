-- Load custom keymaps
-- Load vimrc
require("config.vimrc")
-- Load options
require("config.options")
-- Load autocmd
require("config.autocmd")

-- Load Lua plugins
-- Load lazy
require("config.lazy")
-- Load cmp
require("config.cmp")
-- Load conform
require("config.conform")
-- Load copilot
require("config.copilot")
-- Load lsp
require("config.lsp-config")
require("config.mason")
require("config.mason-lsp")
-- Load lualine
require("config.lualine")
-- Load telescope
require("config.telescope")
-- Load treesitter
require("config.treesitter")

-- Load Lua plugin keymaps
require("config.plugin-keymap")
