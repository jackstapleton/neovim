local options = {
  -- buffer settings
  autowrite = true,                              -- save everytime you leave a buffer
  -- split settings/mappings
  splitbelow = true,                             -- split opens below instead of in place
  splitright = true,                             -- split opens to the right instead of in place
  -- tab indenting settings
  autoindent  = true,                            -- indent according to previous line.
  expandtab   = true,                            -- use spaces instead of tabs.
  tabstop     = 4,                               -- tabs show as 4 spaces
  softtabstop = 4,                               -- tab key indents by 4 spaces.
  shiftwidth  = 4,                               -- indents by 4 spaces.
  shiftround  = true,                            -- indents to next multiple of 'shiftwidth'.
  backspace = { "indent", "eol", "start" },      -- make backspace work as you would expect.
  -- searching
  hlsearch   = true,
  ignorecase = true,
  incsearch  = true,
  smartcase  = true,
  -- backup files
  backup      = false,
  swapfile    = false,
  writebackup = false,
  -- undo settings
  undofile    = true,
  undolevels  = 9999,
  -- colorscheme
  background    = "dark",
  termguicolors = true,
  -- miscelaneous
  completeopt = { "menu", "menuone", "noselect" },  -- completions
  showmatch = true,                                 -- show matching brackets
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "colorscheme gruvbox"
