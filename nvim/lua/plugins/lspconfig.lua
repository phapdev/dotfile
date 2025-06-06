return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
      --[[lua]]
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
              disable = { "different-requires" },
            },
          },
        },
      })
      --[[rust]]
      -- lspconfig.rust_analyzer.setup({})

      --[[go lang]]
      lspconfig.gopls.setup({
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
          env = {
            GOEXPERIMENT = "rangefunc",
          },
          formatting = {
            gofumpt = true,
          },
        },
      })

      --[[tailwindcss]]
      lspconfig.tailwindcss.setup({
        settings = {
          includeLanguages = {
            templ = "html",
          },
        },
      })

      --[[templ]]
      -- lspconfig.templ.setup({})

      --[[typescript]]
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      --[[js]]
      lspconfig.eslint.setup({
        capabilities = capabilities,
      })

      --[[yaml]]
      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })

      --[[python]]
      lspconfig.pylsp.setup({ capabilities = capabilities })

      --[[lsp kepmap setting]]
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>rcn", vim.lsp.buf.rename, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      -- list all methods in a file
      -- working with go confirmed, don't know about other, keep changing as necessary
      vim.keymap.set("n", "<leader>fm", function()
        local filetype = vim.bo.filetype
        local symbols_map = {
          python = "function",
          javascript = "function",
          typescript = "function",
          java = "class",
          lua = "function",
          go = { "method", "struct", "interface" },
        }
        local symbols = symbols_map[filetype] or "function"
        require("fzf-lua").lsp_document_symbols({ symbols = symbols })
      end, {})
    end,
  },
}
