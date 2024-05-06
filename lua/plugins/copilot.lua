---@type LazySpec
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  { "zbirenbaum/copilot-cmp", opts = {}, dependencies = { "zbirenbaum/copilot.lua", "onsails/lspkind.nvim" } },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "zbirenbaum/copilot-cmp" },
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "copilot",
        group_index = 1,
        priority = 10000,
      })
    end,
  },
  {
    "onsails/lspkind.nvim",
    opts = function(_, opts) opts.symbol_map.Copilot = "" end,
  },
}
