---@type LazySpec
return {
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        comments = {},
        keywords = {},
      },
    },
    dependencies = {
      {
        "AstroNvim/astroui",
        ---@type AstroUIOpts
        opts = {
          colorscheme = "eldritch",
        },
      },
      {
        "rcarriga/nvim-notify",
        optional = true,
        opts = {
          background_colour = "#000000",
        },
      },
    },
  },
}
