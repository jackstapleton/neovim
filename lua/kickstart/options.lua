-- Save buffer as you leave it
vim.opt.autowrite = true

-- Split settings
vim.opt.wrap = false

-- Split settings
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Smart indenting
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Set cursorline
vim.o.cursorline = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.undofile = true

-- Show matching brackets
vim.opt.showmatch = true

-- Set highlight on search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 500
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.opt.termguicolors = true
vim.cmd [[colorscheme gruvbox]]

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'
