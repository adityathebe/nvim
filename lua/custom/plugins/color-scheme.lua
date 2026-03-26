return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    local is_dark = vim.fn.system('defaults read -g AppleInterfaceStyle 2>/dev/null'):match 'Dark'
    vim.cmd.colorscheme(is_dark and 'catppuccin-mocha' or 'catppuccin-latte')
  end,

  --
  -- 'sainnhe/gruvbox-material',
  -- name = "gruvbox",
  -- priority = 1000,
  -- config = function()
  --   vim.cmd.colorscheme 'gruvbox-material'
  -- end,

  -- 'oxfist/night-owl.nvim',
  -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
  -- priority = 1000, -- make sure to load this before all the other start plugins
  -- config = function()
  --   -- load the colorscheme here
  --   require('night-owl').setup()
  --   vim.cmd.colorscheme 'night-owl'
  -- end,
}
