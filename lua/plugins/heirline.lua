---@type LazySpec
return {
  {
    {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
        local status = require "astroui.status"

        -- custom heirline statusline component for grapple
        local grappleStatus = status.component.builder {
          {
            provider = function()
              local available, grapple = pcall(require, "grapple")
              if available then return grapple.statusline() end
            end,
          },
        }

        opts.statusline = {
          hl = { fg = "fg", bg = "bg" },
          status.component.mode(),
          status.component.git_branch(),
          grappleStatus, -- load the custom component
          status.component.file_info { filetype = {}, filename = false, file_modified = false },
          status.component.git_diff(),
          status.component.diagnostics(),
          status.component.fill(),
          status.component.cmd_info(),
          status.component.fill(),
          status.component.lsp(),
          status.component.virtual_env(),
          status.component.treesitter(),
          status.component.nav(),
          status.component.mode { surround = { separator = "right" } },
        }
      end,
    },
  },
}
