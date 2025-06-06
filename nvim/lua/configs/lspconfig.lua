require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "ts_query_ls" }

vim.lsp.enable(servers)


-- read :h vim.lsp.config for changing options of lsp servers 
