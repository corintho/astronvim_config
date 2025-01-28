if not vim.g.neovide then
  return {} -- We only have this setup in neovide, so if we open in a terminal, keep everything as it is
end

---@type LazySpec
return {
  {
    "jackplus-xyz/monaspace.nvim",
    lazy = false,
    opts = {},
  },
}
