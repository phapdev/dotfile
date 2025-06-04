local plugin_files = {
  "conform",
  "kitty",
  "nvim-lspconfig",
  "treesister"
}

for _, name in ipairs(plugin_files) do
  local ok, err = pcall(require, "plugins." .. name)
  if not ok then
    vim.notify("Error loading plugin: " .. name .. "\n" .. err, vim.log.levels.ERROR)
  end
end
