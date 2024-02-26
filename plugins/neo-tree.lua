return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.enable_git_status = true
    opts.buffers = {
      follow_current_file = {
        enabled = true, -- This will find and focus the file in the active buffer every time
        --              -- the current file is changed while the tree is open.
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
      },
    }
    opts.filesystem = {
      follow_current_file = {
        enabled = true, -- This will find and focus the file in the active buffer every time
        --               -- the current file is changed while the tree is open.
        leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
      },
      filtered_items = {
        visible = false,
        hide_gitignored = false,
        hide_dotfiles = false,
        never_show = {
          ".git",
          "node_modules",
          "__pycache__",
          ".DS_Store",
        },
        always_show = {
          ".gitignore",
        },
      },
    }
  end,
}
