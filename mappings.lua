-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- vim-tmux-navigator
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", desc = "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", desc = "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", desc = "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", desc = "window up" },

    -- Navigation
    ["J"] = { "15jzz", desc = "Move down" },
    ["K"] = { "15kzz", desc = "Move up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
