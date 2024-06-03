-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  -- extension = {
  --   foo = "fooscript",
  -- },
  filename = {
    ["Podfile"] = "ruby",
  },
  -- pattern = {
  --   ["~/%.config/foo/.*"] = "fooscript",
  -- },
}
-- Setup for neovide
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Mono:h16"
  vim.g.neovide_cursor_animation_length = 0

  -- Proper setup for OSX
  local jit = require "jit"
  if jit.os == "OSX" then
    vim.g.neovide_input_macos_option_key_is_meta = true
    vim.g.neovide_input_use_logo = 1
    -- Fixes copy & paste using Cmd on OSX
    vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  end
end
