-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous [D]iagnostic - "[d"' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next [D]iagnostic - "]d"' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Movements
vim.keymap.set('n', 'H', '<cmd>bp<cr>', { desc = 'Previous Buffer - "shift h"' })
vim.keymap.set('n', 'L', '<cmd>bn<cr>', { desc = 'Next Buffer - "shift l"' })
-- Delete the current buffer without closing split
vim.keymap.set('n', '<leader>bd', '<cmd>Bdelete<cr>', { desc = '[B]uffer [D]elete without closing the split - "leader bd"' })

vim.keymap.set('n', 'C-j', '<cmd>cp<cr>', { desc = 'Previous QuickFix item - "ctrl j"' })
vim.keymap.set('n', 'C-k', '<cmd>cn<cr>', { desc = 'Next QuickFix item - "ctrl k"' })

-- Replace
vim.keymap.set('n', '<leader>rb', "yiw{v}:s/\\<<c-r>0\\>//g<left><left>", { desc = 'Replace word in the current block - "leader rb"' })
vim.keymap.set('n', '<leader>rf', ':%s/\\<<c-r><c-w>\\>//g<left><left>', { desc = 'Replace word in file - "leader rf"' })
vim.keymap.set('n', '<leader>rl', ':s/\\<<c-r><c-w>\\>//g<left><left>', { desc = 'Replace word in file - "leader rf"' })

-- Increase Size of Current Buffer
vim.keymap.set('n', '<leader>[', ':vertical resize -10<cr>:resize -10<cr>', { desc = 'Increase the size of the current buffer - "leader ["' })
vim.keymap.set('n', '<leader>]', ':vertical resize +10<cr>:resize +10<cr>', { desc = 'Increase the size of the current buffer - "leader ]"' })
