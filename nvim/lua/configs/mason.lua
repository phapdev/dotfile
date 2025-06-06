return {
  ensure_installed =
  {
    --[[ lua ]]
    "lua-language-server",
    "stylua",
    --[[ ts-js ]]
    "typescript-language-server",
    "ts_query_ls",
    "prettier",
    --[[rust]]
    "rust-analyzer",
    "rustfmt",
    "codelldb",
    --[[ website ]]
    "html-lsp",
    "css-lsp"

  },
  auto_install = true
}
