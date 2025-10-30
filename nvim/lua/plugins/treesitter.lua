-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
      "html",
      "tsx",
      "html",
      "css",
      "markdown",
      "javascript",
      "typescript",

      "rust",
      "python",
    },
  },
}
