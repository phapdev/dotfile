require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true }
---
map("n", "x", '"_x')
map("n", "p", '"0p')
map("n", "P", '"0P')
map("v", "p", '"0p')
map("n", "C-c", '"_c')
map("n", "C-C", '"_C')
map("v", "C-c", '"_c')
map("v", "C-C", '"_C')
map("n", "d", '"_d')
map("n", "D", '"_D')
map("v", "d", '"_d')
map("v", "D", '"_D')

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- COMMAND BUTTON
map("n", "<D-s>", "<cmd> w <CR>", { noremap = true, silent = true, nowait = true }) -- Cmd + S
map("n", "<D-q>", ":q<CR>", { noremap = true, silent = true })                      -- Cmd + Q
map("n", "<D-c>", '"+y', { noremap = true, silent = true })
map("v", "<D-c>", '"+y', { noremap = true, silent = true })
map("i", "<D-v>", '<C-r>+', { noremap = true, silent = true }) -- Insert mode
map("n", "<D-v>", '"+p', { noremap = true, silent = true })    -- Normal mode
map("n", "<D-f>", function() vim.lsp.buf.format { async = true } end, { nowait = true })

-- Di chuyển giữa các cửa sổ (splits) bằng Cmd + h/j/k/l
map("n", "<D-h>", "<C-w>h", opts)
map("n", "<D-j>", "<C-w>j", opts)
map("n", "<D-k>", "<C-w>k", opts)
map("n", "<D-l>", "<C-w>l", opts)

-- -- General mappings
-- NORMAL MODE
-- Tab
map("n", "<leader>te", ":tabedit<Return>", { desc = "New tab buffer" })
map("n", "<leader>tn", ":tabNext<Return>", { desc = "Next tab buffer" })
map("n", "<leader>tp", ":tabprevious<Return>", { desc = "Prev tab buffer" })
map("n", "<leader>tc", ":tabclose<Return>", { desc = "Prev tab buffer" })
-- Split window
map("n", "<C-w><left>", "<cmd>vertical resize +5<cr>", { desc = "Vertical size +5" })
map("n", "<C-w><right>", "<cmd>vertical resize -5<cr>", { desc = "Vertical size -5" })
-- Tmux navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left", nowait = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right", nowait = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down", nowait = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp", { desc = "window up", nowait = true })
-- Copy & paster
map("n", "<C-c>", '"+y', { desc = "copy", nowait = true })
map("n", ";", ":", { desc = "enter command mode", nowait = true })
map("n", "<C-a>", "gg<S-v>G", { desc = "select all", nowait = true, silent = true })
map("n", "<C-v>", '"+p', { desc = "paste", nowait = true })
-- Shift mapping config
map("n", "<S-Down>", "<cmd>t.<CR>", { nowait = true })
map("n", "<S-Up>", "<cmd>t 0<CR>", { nowait = true })
map("n", "<M-J>", "<cmd>t.<CR>", { nowait = true })
map("n", "<M-K>", "<cmd>t -1<CR>", { nowait = true })
-- Option mapping config
map("n", "<M-Down>", "<cmd>m+<CR>", { nowait = true })
map("n", "<M-Up>", "<cmd>m-2<CR>", { nowait = true })
map("n", "<M-j>", "<cmd>m+<CR>", { nowait = true })
map("n", "<M-k>", "<cmd>m-2<CR>", { nowait = true })
-- format & quit
map("n", "<C-f>", function() vim.lsp.buf.format { async = true } end, { nowait = true })
map("n", "q", "<cmd>q<CR>", { desc = "quit", nowait = true })
-- Tab config
map("n", "<leader>bb", "<cmd>tabnew<CR>", { desc = "new tab", nowait = true })
map("n", "<leader>bc", "<cmd>BufferLinePickClose<CR>", { desc = "pick close", nowait = true })
map("n", "<leader>bj", "<cmd>BufferLinePick<CR>", { desc = "pick buffer", nowait = true })
map("n", "<leader>bt", "<cmd>BufferLineSortByTabs<CR>", { desc = "sort by tabs", nowait = true })
-- window
map("n", "<C-z>", "<cmd>redo<CR>", { desc = "redo", nowait = true, silent = true })
map("n", "<C-w><left>", "<cmd>vertical resize +5<CR>", { desc = "vertical resize +5", nowait = true })
map("n", "<C-w><right>", "<cmd>vertical resize -5<CR>", { desc = "vertical resize -5", nowait = true })
-- transparency
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparency" })
-- Telescope
map("n", "<leader>fn", ":Telescope file_browser path=%:p:help |select_buffer=true<CR>|", { desc = "File Browser", nowait = true })
-- Rust tools
map("n", "<leader>rca", "<cmd> RustCodeAction <CR>", { desc = "Rust Code Action" })
map("n", "<leader>rch", "<cmd> RustHoverActions <CR>", { desc = "Rust Hover Actions", buffer = false })
map("n", "<leader>rcc", "<cmd> RustRunnables <CR>", { desc = "Rust Runnables" })
map("n", "<leader>rcp", "<cmd> RustOpenCargo <CR>", { desc = "Rust Open Cargo" })
map("n", "<leader>rcr", "<cmd> RustRun <CR>", { desc = "Rust Run" })
map("n", "<leader>rct", "<cmd> RustTest <CR>", { desc = "Rust Test" })

-- VISUAL MODE
map("v", ">", ">gv", { desc = "indent" })
map("v", "<A-j>", ":m .+1<CR>==", { desc = "Alt down", nowait = true })
map("v", "<A-k>", ":m .-2<CR>==", { desc = "Alt up", nowait = true })
map("v", "p", '"_dP', { nowait = true })
map("v", "<C-c>", '"+y', { desc = "copy", nowait = true })
map("v", "<C-v>", '"+p', { desc = "paste", nowait = true })
map("v", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "code action", nowait = true })

-- INSERT MODE
map("i", "<S-Down>", "<cmd>t.<CR>", { nowait = true })
map("i", "<M-Down>", "<cmd>m+<CR>", { nowait = true })
map("i", "<S-Up>", "<cmd>t -1<CR>", { nowait = true })
map("i", "<M-Up>", "<cmd>m-2<CR>", { nowait = true })
map("i", "<C-f>", function() vim.lsp.buf.format { async = true } end, { desc = "formatter", nowait = true })

-- # TERMINAL MODE
map("t", "<D-v>", [[<C-\><C-n>"+pa]], opts) -- paste vào terminal mode
map("t", "<D-c>", [[<C-\><C-n>"+y]], opts)  -- copy từ terminal (ít dùng hơn)
--Command config
-- Di chuyển giữa các terminal bằng Cmd + h/j/k/l
map("t", "<D-h>", [[<C-\><C-n><C-w>h]], opts)
map("t", "<D-j>", [[<C-\><C-n><C-w>j]], opts)
map("t", "<D-k>", [[<C-\><C-n><C-w>k]], opts)
map("t", "<D-l>", [[<C-\><C-n><C-w>l]], opts)

-- DAP DEBUGGING
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })
-- map("n", "<leader>dpr", function() require("dap-python").test_method() end, { desc = "Python test method" })
