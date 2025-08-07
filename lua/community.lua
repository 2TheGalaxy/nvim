-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- ui
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.recipes.disable-borders" },
  -- ai
  { import = "astrocommunity.completion.copilot-cmp" },
  -- lang packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.go" },
  -- motion
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.harpoon" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
}
