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
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return { timeout_ms = 5000, lsp_format = lsp_format_opt }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'prettier' },
      go = { 'goimports', 'gofumpt', 'golines' },
      yaml = { 'prettier' },
      sql = { 'pg_format' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      -- ['goimports-reviser'] = { prepend_args = { '-rm-unused' } },
      golines = { prepend_args = { '--max-len=120', '--tab-len=2', '--ignore-generated', '--chain-split-dots' } },
    },
  },
}
