---@type LazySpec
return {
  {
    "m4xshen/hardtime.nvim",
    opts = function()
      local config = require("hardtime.config").config
      table.insert(config.disabled_filetypes, 1, "Overseer*")
      config.disabled_keys = {}
    end,
    -- opts = {
    --   disabled_filetypes = {
    --     "OverseerList",
    --   },
    -- },
  },
}
