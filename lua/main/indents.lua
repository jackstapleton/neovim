vim.opt.list = true
vim.opt.listchars:append("space: ")
vim.opt.listchars:append("trail: ")
vim.opt.listchars:append("eol: ")

require("indent_blankline").setup {
  show_end_of_line = false,
  show_current_context = true,
  char = '│',
}
