local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    typescript = { "prettier" },
    javascript = { "prettier" },
     -- move = { "movefmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
