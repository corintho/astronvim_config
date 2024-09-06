-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  -- Coding
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.completion.copilot-cmp" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.search.nvim-spectre" },
  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.grapple-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  -- Git
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.neogit" },
  -- Colorschemes
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  -- Other
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.media.codesnap-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
}
