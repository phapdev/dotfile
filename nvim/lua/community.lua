-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.typescript" },
  -- NOTE: Rust rustaceanvim.lua
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.move" },
  -- auto completion
  { import = "astrocommunity.completion.codeium-vim" },
  -- import/override with your plugins folder
}
