return {
  "vim-test/vim-test",
  lazy = false,
  dependencies = { "preservim/vimux" },
  keys = {
    { "<leader>t", "<cmd>TestNearest<cr>", desc = "Test nearest" },
    { "<leader>a", "<cmd>TestSuite<CR>", desc = "Test suite" },
  },
  config = function()
    -- set strategy
    vim.g["test#strategy"] = "vimux"
  end,
}
