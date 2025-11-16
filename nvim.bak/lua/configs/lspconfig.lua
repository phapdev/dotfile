local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- local lspconfig = require("lspconfig") -- pre nvim 0.11
local lspconfig = require "nvchad.configs.lspconfig" -- nvim 0.11

-- list of all servers configured.
lspconfig.servers = {
  "lua_ls",
  "html",
  "cssls",
  "ts_ls",
  -- "tsgo",
  -- "clangd",
  -- "docker_language_server",
  "eslint",
  -- "gopls",
  "jsonls",
  "pyright",
  "rust_analyzer",
  "tailwindcss",
}

-- list of servers configured with default config.
local default_servers = {
  "lua_ls",
  "html",
  "cssls",
  "ts_ls",
  -- "tsgo",
  -- "clangd",
  -- "docker_language_server",
  -- "eslint",
  -- "gopls",
  "jsonls",
  "pyright",
  "rust_analyzer",
  "tailwindcss",
}

-- lsps with default config
for _, lsp in ipairs(default_servers) do
  -- lspconfig[lsp].setup({ -- pre nvim 0.11
  if lsp == "tailwindcss" then
    vim.lsp.config("tailwindcss", {
      settings = {
        includeLanguages = {
          templ = "html",
        },
      },
    })
  else
    vim.lsp.config(lsp, { -- nvim 0.11
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
    })
  end

  vim.lsp.enable(lsp)
end

-- vim.lsp.enable {
--   "lua_ls",
--   "ts_ls",
--   "html",
--   "pyright",
--   "tailwindcss",
-- }

-- read :h vim.lsp.config for changing options of lsp servers
-- -- Bật hiển thị lỗi trong dòng code
-- vim.diagnostic.config {
--   enable = true,
--   virtual_text = {
--     prefix = "●", -- Ký hiệu trước lỗi
--     spacing = 2, -- Khoảng cách với text
--   },
--   signs = true,
--   underline = true,
--   update_in_insert = true,
--   severity_sort = true,
-- }
