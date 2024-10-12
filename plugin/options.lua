-- Set options
vim.opt.background = 'dark'
vim.opt.breakindent = true
vim.opt.colorcolumn = '80'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'split'
vim.opt.linebreak = true
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.showmode = false
vim.opt.signcolumn = 'auto'
vim.opt.smartcase = true
vim.opt.spell = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.textwidth = 0
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.wrap = true
vim.opt.wrapmargin = 0

-- Set global variables
vim.g.have_nerd_font = true
vim.g.autoformat_enabled = true
vim.g.autopairs_enabled = true
vim.g.cmp_enabled = true
vim.g.diagnostics_mode = 3
vim.g.icons_enabled = true
vim.g.ui_notifications_enabled = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1