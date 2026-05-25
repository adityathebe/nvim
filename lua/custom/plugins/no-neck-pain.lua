return {
  'shortcuts/no-neck-pain.nvim',
  enabled = false,
  opts = {
    version = '*', -- stable
    width = 160,
    integrations = {
      aerial = {
        position = 'right',
        reopen = true,
      },
    },
  },
  config = function(_, opts)
    require('no-neck-pain').setup(opts)
    require('no-neck-pain').toggle() -- Enable Zen mode by default
  end,
}
