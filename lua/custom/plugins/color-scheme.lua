return {
  --   priority = 1000,
  --   config = function()
  --     require('astrotheme').setup {
  --       palette = 'astrodark',
  --     }
  --     -- vim.cmd.colorscheme 'astrodark'
  --   end,

  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd 'colorscheme nord'
  --   end,

  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
