require "nvchad.options"

local o = vim.o
local opt = vim.opt
local g = vim.g
-- o.cursorlineopt ='both' -- to enable cursorline!
-- Numbers
o.number = true
o.numberwidth = 2
o.ruler = false
o.relativenumber = true
o.cursorline = true

vim.cmd "set expandtab"
vim.cmd "set tabstop=4"
vim.cmd "set softtabstop=4"

vim.g.mapleader = " "
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead89e" })
-- vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.hlsearch = true
vim.opt.incsearch = true
-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- disable nvim intro
opt.shortmess:append "sI"

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true
-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250
-- disable some default providers
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
