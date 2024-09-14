return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "eslint-lsp",
      },
    },
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
      },
    },
  },
  -- {
  --   "David-Kunz/gen.nvim",
  --   config = function()
  --     require "configs.gen"
  --   end,
  -- },
  -- markdown-preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  -- => Setup tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- => Rust config
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  -- => Rust config
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      require "configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  -- auto complete tag html
  {
    -- Yeeu cầu thiết lập treesitter ( TSInstall)
    -- example: TSInstall tsx
    "windwp/nvim-ts-autotag",
    ft = { -- giới hạn các file được tự động đóng thẻ (<tag>)
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "javascript.jsx",
      "typescript.jsx",
      "javascript.tsx",
      "typescript.tsx",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "aurum77/live-server.nvim",
    run = function()
      require("live_server.util").install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  },
  -- => Setup tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
