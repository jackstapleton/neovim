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
      width = 150,
      height = 60,
      winblend = 5,
    },
    hidden = true,
    shade_terminals = true,
  })
  popup:toggle()
end

function _TESTPLAN_TOGGLE(--[[optional]]test_suite_filter)
  if not test_suite_filter then
    test_suite_filter = '*'
  else
    test_suite_filter = '*' .. test_suite_filter .. '*'
  end
  command = "cd $tst; source /local/stapletj/miniconda3/etc/profile.d/conda.sh ; conda activate testplan;"
  command = command .. " ./dev_run_tests.sh --mode client_only --port 12610 --procname gw-stapletj-1"
  command = command .. " --test-suites ~/worktrees/analytics.git/REPO/test/analytics_suites/"
  command = command .. " --test-types dashboards --test-filter *::" .. test_suite_filter .. "::*"
  command = command .. " --verbose" 
  _FLOAT_TERMINAL(command, '~/repos/data-cluster-core/test/integration')
end

-- Keymaps to send code to Terminal
vim.keymap.set('i', "<c-y><c-y>", "<esc>yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>ka", { desc = '[Y]ank line and paste in the terminal below - ctrl y' })
vim.keymap.set('n', "<c-y><c-y>", "yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>k", { desc = '[Y]ank line and paste in the terminal below - ctrl y' })
vim.keymap.set('i', "<c-y><c-p>", "<esc>yap<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>ka", { desc = '[Y]ank [Paragraph] and paste in the terminal below - ctrl y' })
vim.keymap.set('n', "<c-y><c-p>", "yap<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>k", { desc = '[Y]ank [Paragraph] and paste in the terminal below - ctrl y' })


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

vim.api.nvim_set_keymap('n', '<leader>ta', '<esc>:lua _TESTPLAN_TOGGLE("")<cr>', { desc = '[T]estplan with [A]ll tests popup terminal - "leader ta"'})
