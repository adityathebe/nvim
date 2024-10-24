return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>lf',
      function()
        require('conform').format {
          async = true,
          lsp_format = 'fallback',
        }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { sql = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return false
      end

      return { timeout_ms = 5000, lsp_format = 'fallback' }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'prettier' },
      go = { 'goimports', 'gofmt', 'golines' },
      yaml = { 'prettier' },
      sql = { 'pg_format' },
      rust = { 'rustfmt' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      -- ['goimports-reviser'] = { prepend_args = { '-rm-unused' } },
      golines = { prepend_args = { '--max-len=180', '--tab-len=2', '--no-reformat-tags', '--ignore-generated', '--chain-split-dots' } },
    },
  },
}
