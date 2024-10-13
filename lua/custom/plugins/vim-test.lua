return {
  'vim-test/vim-test',
  lazy = false,
  dependencies = { 'preservim/vimux' },
  keys = {
    { '<leader>tn', '<cmd>TestNearest<cr>', desc = 'Test nearest' },
    { '<leader>ts', '<cmd>TestSuite<CR>', desc = 'Test suite' },
  },
  config = function()
    -- set strategy
    vim.g['test#strategy'] = 'vimux'
  end,
}
