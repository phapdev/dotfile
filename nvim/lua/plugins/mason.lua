return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "rustfmt",
        "stylua",

        "eslint-lsp",
        "prettierd",
        "tailwindcss-language-server", -- tailwindcss
        "typescript-language-server", -- typescript
        "rust-analyzer", -- Rust
        "lua-language-server", -- Lua
        -- "gopls", -- go
      },
    },
    dependencies = { "williamboman/mason.nvim" },
    cmd = {
      "MasonToolsInstall",
      "MasonToolsInstallSync",
      "MasonToolsUpdate",
      "MasonToolsUpdateSync",
      "MasonToolsClean",
    },
  },
}
