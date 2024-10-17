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

  -- 'catppuccin/nvim',
  -- name = 'catppuccin',
  -- priority = 1000,
  -- config = function()
  --   vim.cmd.colorscheme 'catppuccin-mocha'
  -- end,

  'oxfist/night-owl.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- load the colorscheme here
    require('night-owl').setup()
    vim.cmd.colorscheme 'night-owl'
  end,
}
