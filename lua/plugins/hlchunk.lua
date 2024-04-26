---@type LazySpec
return {
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  {
    "shellRaining/hlchunk.nvim",
    lazy = true,
    event = "User AstroFile",
    dependencies = {
      { "AstroNvim/astroui" },
    },
    config = function()
      local hlchunk = require "hlchunk"
      local style_color = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "CursorLineNr"), "fg", "gui")
      -- Add oir filetype to default excludes list
      table.insert(require("hlchunk.utils.filetype").exclude_filetypes, { oil = true })
      hlchunk.setup {
        chunk = {
          enable = true,
          use_treesitter = true,
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = "",
          },
          style = style_color,
          textobject = "",
          max_file_size = 1024 * 1024,
          error_sign = true,
        },

        indent = {
          enable = false,
          use_treesitter = false,
          chars = {
            "│",
          },
          style = style_color,
        },

        line_num = {
          enable = true,
          use_treesitter = true,
          style = style_color,
        },

        blank = {
          enable = false,
          use_treesitter = true,
          chars = {
            " ",
          },
          style = {
            { bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "cursorline"), "bg", "gui") },
            { bg = "", fg = "" },
          },
          -- exclude_filetype = "...",
        },
        context = {
          enable = false,
          use_treesitter = true,
          chars = {
            "",
          },
        },
      }
    end,
  },
}
