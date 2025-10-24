local options = {
  ensure_installed = {
    "bash",
    "fish",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
    "rust",
    "go",
    "ts",
    ---
    "typescript",
    "javascript",
    "html",
    "css",
    "gitcommit",
    "yaml",
    "tsx",
    "json",
    "http",
    "tmux"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
