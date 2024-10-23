return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },

    -- Useful for getting pretty icons, but requires a Nerd Font.
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },

    {
      'nvim-telescope/telescope-live-grep-args.nvim',
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = '^1.0.0',
    },
  },
  config = function()
    local actions = require 'telescope.actions'

    -- Telescope is a fuzzy finder that comes with a lot of different things that
    -- it can fuzzy find! It's more than just a "file finder", it can search
    -- many different aspects of Neovim, your workspace, LSP, and more!
    --
    -- The easiest way to use Telescope, is to start by doing something like:
    --  :Telescope help_tags
    --
    -- After running this command, a window will open up and you're able to
    -- type in the prompt window. You'll see a list of `help_tags` options and
    -- a corresponding preview of the help.
    --
    -- Two important keymaps to use while in Telescope are:
    --  - Insert mode: <c-/>
    --  - Normal mode: ?
    --
    -- This opens a window that shows you all of the keymaps for the current
    -- Telescope picker. This is really useful to discover what Telescope can
    -- do as well as how to actually do it!

    -- [[ Configure Telescope ]]
    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
      defaults = {
        mappings = {
          i = {
            ['<C-J>'] = actions.move_selection_next,
            ['<C-K>'] = actions.move_selection_previous,
            ['<CR>'] = open_selected,
            ['<M-CR>'] = open_all,
          },
          n = {
            q = actions.close,
            ['<CR>'] = open_selected,
            ['<M-CR>'] = open_all,
          },
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    pcall(require('telescope').load_extension, 'live_grep_args')

    -- See `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
    vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = '[F]ind [F]iles' })
    -- vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = '[F]ind by [W]ord' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
    vim.keymap.set('n', '<leader>fw', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

    -- Slightly advanced example of overriding default behavior and theme
    vim.keymap.set('n', '<leader>fb', function()
      -- Use the default layout instead of dropdown
      builtin.current_buffer_fuzzy_find {
        layout_strategy = 'horizontal',
        layout_config = {
          height = 0.4, -- Set height to 40% of the screen
          preview_width = 0.6,
        },
      }
    end, { desc = '[/] Fuzzily search in current buffer' })

    -- Fuzzy find all the symbols in your current document.
    --  Symbols are things like variables, functions, types, etc.
    vim.keymap.set('n', '<leader>fsd', builtin.lsp_document_symbols, { desc = '[S]ymbols [D]ocument' })

    -- Fuzzy find all the symbols in your current workspace.
    --  Similar to document symbols, except searches over your entire project.
    vim.keymap.set('n', '<leader>fsw', builtin.lsp_dynamic_workspace_symbols, { desc = '[S]ymbols [W]orkspace' })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set('n', '<leader>fc', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[F]earch [N]eovim configs' })
  end,
}
