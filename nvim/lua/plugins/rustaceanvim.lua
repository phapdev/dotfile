return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    lazy = false,   -- This plugin is already lazy
    config = function()
      vim.g.rustaceanvim = function()
        -- Update this path
        local extension_path = vim.env.HOME .. '/.local/share/nvim/mason/packages/codelldb/extension/'
        local codelldb_path = extension_path .. 'adapter/codelldb'
        local liblldb_path = extension_path .. 'lldb/lib/liblldb'
        local this_os = vim.uv.os_uname().sysname;

        -- The path is different on Windows
        if this_os:find "Windows" then
          codelldb_path = extension_path .. "adapter\\codelldb.exe"
          liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
        else
          -- The liblldb extension is .so for Linux and .dylib for MacOS
          liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
        end

        local cfg = require('rustaceanvim.config')
        return {
          dap = {
            adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
          },
        }
      end
    end
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attack.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function ()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function ()
        dapui.close()
      end
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      require("dapui").setup()
    end
  }
}
