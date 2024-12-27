---@type LazySpec
return {
  {
    "pineapplegiant/spaceduck",
    dependencies = {
      {
        "AstroNvim/astroui",
        ---@type AstroUIOpts
        opts = {
          highlights = {
            spaceduck = { -- a table of overrides/changes when applying the astrotheme theme
              StatusLine = { link = "StatusLineNC" },
              FlashLabel = { link = "EyelinerPrimary" },
            },
          },
        },
      },
    },
  },
}
