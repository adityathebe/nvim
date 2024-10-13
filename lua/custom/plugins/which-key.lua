return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    icons = {
      group = '',
      rules = false,
    },
  },
  config = function()
    local wk = require 'which-key'
    wk.add {
      { '<leader>s', group = '[S]earch' },
      { '<leader>g', group = '[G]it' },
      { '<leader>l', group = '[L]SP' },
    }
  end,
}
