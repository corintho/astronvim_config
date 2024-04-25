---@type LazySpec
return {
  "brunotvs/cmp-conventionalcommits",
  dependencies = { "hrsh7th/nvim-cmp", lazy = true },
  setup = function()
    require("cmp").setup.buffer {
      sources = require("cmp").config.sources({ { name = "conventionalcommits" } }, { { name = "buffer" } }),
    }
  end,
}
