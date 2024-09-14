require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
--noh
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "q", "<cmd>q<CR>", { desc = "Quit" })

-- mode nomarl
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "window up" })
-- copy - paster - select all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
-- move
map("n", "<M-j>", "<cmd>m+<CR>", { desc = "Move J" })
map("n", "<M-k>", "<cmd>m-2<CR>", { desc = "Move K" })
-- formater
map({ "n", "i" }, "<C-f>", "<cmd>lua vim.lsp.buf.format{async=true}<CR>", { desc = "formater" })
-- Split window
map("n", "<C-w>l", "<cmd>vertical", { desc = "formater" })
-- mutil mode
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-z>", "<cmd> redo <cr>")

-- Mode insert
map("i", "jk", "<ESC>")

-- transparency
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle Transparency" })

--rust-tools
map("n", "<leader>rca", "<cmd> RustCodeAction <CR>", { desc = "Rust action" })
map("n", "<leader>rch", "<cmd> RustHoverActions <CR>", { desc = "Rust hover" })
map("n", "<leader>rcc", "<cmd> RustRunnables <CR>", { desc = "Rust runnables" })
map("n", "<leader>rcp", "<cmd> RustOpenCargo <CR>", { desc = "Rust open Cargo" })
map("n", "<leader>rcr", "<cmd> RustRun <CR>", { desc = "Rust run" })
map("n", "<leader>rct", "<cmd> RustTest <CR>", { desc = "Rust test" })

map("n", "<C-c>", '"+y', { desc = "copy" })
map({ "n", "v" }, "<C-v>", '"+p', { desc = "parster" })
