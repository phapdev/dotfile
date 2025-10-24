require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
-- local opts = { noremap = true, silent = true, nowait = true }
local keymap = vim.keymap
-- Do things without affecting the registers
--
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

keymap.set("n", "d", '"_dd')
keymap.set("v", "d", '"_dd')
keymap.set("n", "x", '"_x')

keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<D-s>", "<cmd> w <CR>", { noremap = true, silent = true, nowait = true }) -- Cmd + S
map("n", "<D-a>", "gg<S-v>G", { desc = "select all", noremap = true, silent = true, nowait = true }) -- Cmd + a

map("n", "<C-a>", "gg<S-v>G", { desc = "select all", nowait = true, silent = true })

map("n", "<D-c>", '"+y', { noremap = true, silent = true })
map("v", "<D-c>", '"+y', { noremap = true, silent = true })

map({ "n", "v" }, "<D-f>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format with mackey" })

map({ "n", "x" }, "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

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
-- map("n", "<C-c>", '"+y', { desc = "copy", nowait = true })
map("n", "<C-a>", "gg<S-v>G", { desc = "select all", nowait = true, silent = true })
-- map("n", "<C-v>", '"+p', { desc = "paste", nowait = true })
-- Shift mapping config
-- Option mapping config
map("n", "<M-Down>", "<cmd>m+<CR>", { nowait = true })
map("n", "<M-Up>", "<cmd>m-2<CR>", { nowait = true })
map("n", "<M-j>", "<cmd>m+<CR>", { nowait = true })
map("n", "<M-k>", "<cmd>m-2<CR>", { nowait = true })
-- window
map("n", "<C-z>", "<cmd>redo<CR>", { desc = "redo", nowait = true, silent = true })
map("n", "<C-w><left>", "<cmd>vertical resize +5<CR>", { desc = "vertical resize +5", nowait = true })
map("n", "<C-w><right>", "<cmd>vertical resize -5<CR>", { desc = "vertical resize -5", nowait = true })
-- transparency
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparency" })
-- Telescope
map(
  "n",
  "<leader>fn",
  ":Telescope file_browser path=%:p:help |select_buffer=true<CR>|",
  { desc = "File Browser", nowait = true }
)
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
-- map("v", "<C-c>", '"+y', { desc = "copy", nowait = true })
-- map("v", "<C-v>", '"+p', { desc = "paste", nowait = true })
map("v", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "code action", nowait = true })

-- # TERMINAL MODE
map("t", "<D-v>", [[<C-\><C-n>"+pa]], { nowait = true, silent = true }) -- paste vào terminal mode
map("t", "<D-c>", [[<C-\><C-n>"+y]], { nowait = true, silent = true }) -- copy từ terminal (ít dùng hơn)
--Command config
-- Di chuyển giữa các terminal bằng Cmd + h/j/k/l
map("t", "<D-h>", [[<C-\><C-n><C-w>h]], { nowait = true, silent = true })
map("t", "<D-j>", [[<C-\><C-n><C-w>j]], { nowait = true, silent = true })
map("t", "<D-k>", [[<C-\><C-n><C-w>k]], { nowait = true, silent = true })
map("t", "<D-l>", [[<C-\><C-n><C-w>l]], { nowait = true, silent = true })

-- DAP DEBUGGING
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })
-- map("n", "<leader>dpr", function() require("dap-python").test_method() end, { desc = "Python test method" })

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })
