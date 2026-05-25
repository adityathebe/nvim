-- Set options
vim.opt.breakindent = true
vim.opt.colorcolumn = '120'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.inccommand = 'split'
vim.opt.linebreak = true
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.showmode = false
vim.opt.signcolumn = 'auto'
vim.opt.spell = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.textwidth = 0
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.wrap = true
vim.opt.wrapmargin = 0

-- Use Neovim's built-in Markdown injection query instead of nvim-treesitter's.
do
  local path = vim.env.VIMRUNTIME .. '/queries/markdown/injections.scm'
  vim.treesitter.query.set('markdown', 'injections', table.concat(vim.fn.readfile(path), '\n'))
end

-- Use Neovim's built-in Treesitter highlighting.
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set global variables
vim.g.autoformat_enabled = true
vim.g.autopairs_enabled = true
vim.g.cmp_enabled = true
vim.g.diagnostics_mode = 3
vim.g.icons_enabled = true
vim.g.ui_notifications_enabled = true

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
