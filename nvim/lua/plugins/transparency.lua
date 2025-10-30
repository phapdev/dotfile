-- Toggle transparency for AstroNvim
local transparent = false

local function toggle_transparency()
  transparent = not transparent
  if transparent then
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
    vim.notify("Transparency: ON", vim.log.levels.INFO)
  else
    vim.cmd("colorscheme " .. vim.g.colors_name) -- reload lại scheme gốc
    vim.notify("Transparency: OFF", vim.log.levels.INFO)
  end
end

vim.keymap.set("n", "<leader>tt", toggle_transparency, { desc = "Toggle transparency", silent = true })
