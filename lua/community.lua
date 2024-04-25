-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  -- Coding
  { import = "astrocommunity.completion.copilot-lua" },
  -- Other
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
}
