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
    -- Thêm dòng này để ngăn AstroVim tự động cài lại
    ignore_install = { "move" },
  },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     -- 1. Đảm bảo 'move' luôn có trong danh sách cài đặt
  --     if not opts.ensure_installed then opts.ensure_installed = {} end
  --     table.insert(opts.ensure_installed, "move")
  --
  --     -- 2. Định nghĩa cấu hình parser tùy chỉnh
  --     if not opts.parser_configs then opts.parser_configs = {} end
  --
  --     -- Đây là phần quan trọng nhất:
  --     opts.parser_configs.move = {
  --       install_info = {
  --         -- URL của repo parser bạn muốn dùng
  --         url = "https://github.com/tzakian/tree-sitter-move",
  --
  --         -- Các tệp cần thiết để build (thường là parser.c)
  --         files = { "src/parser.c" },
  --
  --         -- (Tùy chọn) Chỉ định branch nếu cần
  --         -- branch = "main",
  --       },
  --       filetype = "move", -- Liên kết parser này với filetype 'move'
  --     }
  --   end,
  -- },
}
