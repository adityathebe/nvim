-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    background = "dark",
    termguicolors = true,

    cursorline = true, -- highlight the current line
    number = true,
    relativenumber = true,

    spell = false,
    colorcolumn = "80",
    signcolumn = "auto",

    -- always keep 8 lines above/below the cursor (unless start/end of file)
    scrolloff = 8,

    -- search
    ignorecase = true,
    smartcase = true,

    -- line break stuff
    breakindent = true, -- smart indentation
    linebreak = true, -- breaks by word instead of char
    textwidth = 0,
    wrap = true,
    wrapmargin = 0,

    -- tab/space stuff
    shiftwidth = 2,
    tabstop = 2,
    expandtab = true,
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
