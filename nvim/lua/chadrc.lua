-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "nightowl",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    -- "     ▒█▀▄░█▒█░▄▀▀░▀█▀       ",
    -- "     ░█▀▄░▀▄█▒▄██░▒█▒       ",
    -- "       ｐｈａｐｄｅｖ       ",
    -- "       𝖌𝖎𝖙𝖍𝖚𝖇:𝖕𝖍𝖆𝖕𝖉𝖊𝖛       ",
    -- "                            ",
    -- "     Powered By  eovim    ",
    -- "                            ",
    -- "                                                                                                           ",
    "██████╗ ██╗   ██╗███████╗████████╗          ███╗   ███╗ ██████╗ ██╗   ██╗███████╗",
    "██╔══██╗██║   ██║██╔════╝╚══██╔══╝          ████╗ ████║██╔═══██╗██║   ██║██╔════╝",
    "██████╔╝██║   ██║███████╗   ██║     █████   ██╔████╔██║██║   ██║██║   ██║█████╗  ",
    "██╔══██╗██║   ██║╚════██║   ██║             ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  ",
    "██║  ██║╚██████╔╝███████║   ██║             ██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗",
    "╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝             ╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝",
    "      𝖌𝖎𝖙𝖍𝖚𝖇:𝖕𝖍𝖆𝖕𝖉𝖊𝖛       ",
    "                        ",
    "          eovim            ",
    "                            ",
  },
}

M.ui = {
  cmp = {
    style = "atom",
    icons = true, -- only for non-atom styles!
    lspkind_text = true,
    format_colors = {
      lsp = true,
      tailwind = true, -- will work for css lsp too
      icon = "󱓻",
    },
  },

  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
    bufwidth = 21,
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  statusline = {
    enabled = true,
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.5, vsp = 0.5, ["bo sp"] = 0.5, ["bo vsp"] = 0.5 },
  float = {
    relative = "editor",
    row = 0.05,
    col = 0.10,
    width = 0.8,
    height = 0.8,
    border = "single",
  },
}

M.lsp = {
  signature = true,
}

return M
