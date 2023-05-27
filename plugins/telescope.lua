return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.filesystem = {
      filtered_items = {
        hidden = true,
        never_show = {
          ".git",
          "node_modules",
          "__pycache__",
          ".DS_Store",
        },
        always_show = {
          ".gitignore"
        }
      }
    }
  end,
}
