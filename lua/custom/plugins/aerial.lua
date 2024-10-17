return {
  'stevearc/aerial.nvim',
  opts = {
    layout = {
      -- min_width and max_width can be a list of mixed types.
      -- max_width = {40, 0.2} means "the lesser of 40 columns or 20% of total"
      max_width = { 60, 0.2 },
      min_width = 45,
    },
  },
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>ls', '<cmd>AerialToggle<cr>', desc = 'Toggle Symbol Map' },
  },
}
