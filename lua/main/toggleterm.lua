require("toggleterm").setup {
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "vertical", -- "float" | "horizontal" | "vertical"
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "single",
		winblend = 3,
    width = 120,
    height = 150,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set('i', "<c-y>", "<esc>yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>ki", { desc = '[Y]ank and line and paste in the terminal below - ctrl y' })
vim.keymap.set('n', "<c-y>", "yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>k", { desc = '[Y]ank and line and paste in the terminal below - ctrl y' })

local Terminal = require("toggleterm.terminal").Terminal

local python = Terminal:new({ cmd = "python", hidden = true })
function _PYTHON_TOGGLE()
	python:toggle()
end

local kdb = Terminal:new({ cmd = "q", hidden = true })
function _Q_TOGGLE()
	kdb:toggle()
end

function _TESTPLAN_TOGGLE(--[[optional]]test_suite_filter)
  if not test_suite_filter then
    test_suite_filter = '*'
  else
    test_suite_filter = '*' .. test_suite_filter .. '*'
  end
  command = "cd $tst; source ~/miniconda3/etc/profile.d/conda.sh ; conda activate testplan0;"
  command = command .. " ./dev_run_tests.sh --mode client_only --port 11112 --procname genhousekeeping-4"
  command = command .. " --test-types enrichments --test-filter *::" .. test_suite_filter .. "::*"
  command = command .. " --verbose;" 
  command = command .. " sleep 10" 
  testplan = Terminal:new({ cmd = command, direction = 'float', hidden=true })
  testplan:toggle()
end
