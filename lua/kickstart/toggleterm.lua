require('toggleterm').setup({
  auto_scroll = true,
  close_on_exit = false,
  size = 20,
  direction = 'horizontal',
  hide_numbers = true,
  open_mapping = [[<c-\>]],
  persist_size = true,
  shade_terminals = true,
})

function _FLOAT_TERMINAL(command, directory)
  popup = require('toggleterm.terminal').Terminal:new({
    auto_scroll = true,
    close_on_exit = false,
    cmd = command,
    dir = directory,
    direction = 'float',
    float_opts = {
      border = 'single', -- | 'double' | 'shadow' | 'curved' | ... other options supported by win open
      -- like `size`, width and height can be a number or function which is passed the current terminal
      width = 100,
      height = 40,
      winblend = 5,
    },
    hidden = true,
    shade_terminals = true,
  })
  popup:toggle()
end

-- Keymaps to move around from Terminals
vim.keymap.set('t', '<esc>',      [[<c-\><c-n>]],          {desc = 'Move to normal mode in Terminal- "esc"'})
vim.keymap.set('t', '<esc><esc>', [[<cmd>ToggleTerm<cr>]], {desc = 'Close the current Terminal - "esc esc"'})
vim.keymap.set('t', '<c-w><c-h>', [[<cmd>wincmd h<cr>]],   {desc = 'Move Left a pane in Terminal - "ctrl h"'})
vim.keymap.set('t', '<c-w><c-j>', [[<cmd>wincmd j<cr>]],   {desc = 'Move Down a pane in Terminal - "ctrl j"'})
vim.keymap.set('t', '<c-w><c-k>', [[<cmd>wincmd k<cr>]],   {desc = 'Move Up a pane in Terminal - "ctrl k"'})
vim.keymap.set('t', '<c-w><c-l>', [[<cmd>wincmd l<cr>]],   {desc = 'Move Right a pane in Terminal - "ctrl l"'})

-- Keymaps to open custom terminals
vim.api.nvim_set_keymap('n', '<leader>tt',
  '<esc>:lua _FLOAT_TERMINAL()<left>',
  { desc = '[T]oggle Popup [T]erminal - "leader tt"' })
vim.api.nvim_set_keymap('n', '<leader>tq',
  '<esc>:lua _FLOAT_TERMINAL("tree-sitter generate; tree-sitter parse examples/test.txt", "~/repos/tree-sitter-q")<cr>',
  { desc = '[T]oggle [Q] popup terminal - "leader tq"' })
vim.api.nvim_set_keymap('n', '<leader>tp',
  '<esc>:lua _FLOAT_TERMINAL("tree-sitter generate; tree-sitter parse examples/test.txt", "~/repos/tree-sitter-python")<cr>',
  { desc = '[T]oggle [P]ython popup terminal - "leader tp"'})
