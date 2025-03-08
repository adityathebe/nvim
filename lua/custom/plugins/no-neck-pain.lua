return {
  "shortcuts/no-neck-pain.nvim",
  opts = {
    version = "*", -- stable
  },
  config = function(_, opts)
    require("no-neck-pain").setup(opts)
    require("no-neck-pain").toggle() -- Enable Zen mode by default
  end,
}
