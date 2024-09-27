local opt = vim.opt

-- Globals
-- vim.g.markdown_folding = 1
-- vim.g.markdown_recommended_style = 0
vim.g.autoformat = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Options
opt.termguicolors = true
opt.spell = true
opt.spelllang = "en_us,cjk"
opt.spelloptions:append("noplainbuffer")
opt.mouse = "nvi" -- Enable mouse mode

opt.wrap = false
opt.linebreak = true
opt.whichwrap:append("<>[]") -- not gonna lie, no idea what this does
opt.fillchars = { fold = " ", eob = " " }
opt.list = true
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = "number"
opt.scrolloff = 3 -- Lines of context
opt.showmode = false -- dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.laststatus = 3

opt.breakindent = true
opt.autoindent = true
opt.smartindent = true -- Insert indents automatically
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces tabs count for
opt.softtabstop = 2
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent

