return { -- Parser installer/query provider; highlighting is handled by Neovim core
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'bash',
      'diff',
      'go',
      'html',
      'lua',
      'luadoc',
      'query',
      'vim',
      'vimdoc',
    },
    auto_install = false,
    ignore_install = { 'markdown', 'markdown_inline' },
    highlight = {
      enable = false,
    },
  },
}
