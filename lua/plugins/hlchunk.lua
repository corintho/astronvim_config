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
      local hl = function()
        return {
          { fg = function() return vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "CursorLineNr"), "fg", "gui") end },
          { bg = function() return vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "CursorLineNr"), "bg", "gui") end },
        }
      end
      hlchunk.setup {
        chunk = {
          enable = true,
          notify = false,
          use_treesitter = true,
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = "",
          },
          style = hl(),
          textobject = "",
          max_file_size = 1024 * 1024,
          error_sign = true,
        },

        indent = {
          enable = false,
          notify = false,
          use_treesitter = false,
          chars = {
            "│",
          },
          style = hl(),
        },

        line_num = {
          enable = true,
          notify = false,
          use_treesitter = true,
          style = hl(),
        },

        blank = {
          enable = false,
          notify = false,
          use_treesitter = true,
          chars = {
            " ",
          },
          style = {
            { bg = function() return vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "cursorline"), "bg", "gui") end },
            { bg = "", fg = "" },
          },
          -- exclude_filetype = "...",
        },
        context = {
          enable = false,
          notify = false,
          use_treesitter = true,
          chars = {
            "",
          },
        },
      }
    end,
  },
}
