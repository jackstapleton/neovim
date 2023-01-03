-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- Finding Files
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>fb',
  function() require('telescope.builtin').buffers(require('telescope.themes').get_dropdown { previewer = false }) end,
  { desc = '[F]ind open [B]uffers - (leader fb)' })
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles - (leader ff)' })
vim.keymap.set('n', '<leader>fo', require('telescope.builtin').oldfiles, { desc = '[F]ind recently [O]pened files - (leader fo)' })
vim.keymap.set('n', '<leader>fn',
  function() require('telescope.builtin').find_files(require('telescope.themes').get_dropdown { previewer = false, cwd = '~/.config/nvim', }) end,
  { desc = 'Find [N]eovim config files (~/.config/nvim) - (leader fn)' })
vim.keymap.set('n', '<leader>fr',
  function() require('telescope.builtin').find_files(require('telescope.themes').get_dropdown { previewer = false, cwd = '~/repos', }) end,
  { desc = '[F]ind [R]epo files (~/repos) - (leader fr)' })

-- Searching Files
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>sb',
  function() require('telescope.builtin').live_grep { grep_open_files = true, } end,
  { desc = '[S]earch [B]uffers - (leader fb)' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics - (leader sd)' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep - (leader sg)' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp - (leader sh)' })
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymaps - (leader sk)' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').registers, { desc = '[S]earch current [R]egisters - (leader sr)' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord - (leader sw)' })
vim.keymap.set('n', '<leader>sn',
  function() require('telescope.builtin').live_grep( { search_dirs = { '~/.config/nvim' } }) end,
  { desc = '[S]earch [N]eovim config files (~/.config/nvim) - (leader sn)' })
vim.keymap.set('n', '<leader>sv',
  function() require('telescope.builtin').live_grep( { search_dirs = { '~/repos' } }) end,
  { desc = '[S]earch [R]epo files (~/.config/nvim) - (leader sv)' })
