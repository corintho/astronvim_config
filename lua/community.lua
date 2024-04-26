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
  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.grapple-nvim" },
  -- Git
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  -- Other
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.media.codesnap-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
}
