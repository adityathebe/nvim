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
      { '<leader>f', group = '[F]ind' },
      { '<leader>g', group = '[G]it' },
      { '<leader>l', group = '[L]SP' },
    }
  end,
}
