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
-- Delete all but the current buffer
vim.keymap.set('n', '<leader>bo', '<cmd>%bdelete!|edit #|normal `"<cr>', { desc = 'Close all [B]uffers [O]ther than the open one - "leader bc"' })

vim.keymap.set('n', '[c', '<cmd>cprev<cr>', { desc = 'Previous QuickFix item - "[c"' })
vim.keymap.set('n', ']c', '<cmd>cnext<cr>', { desc = 'Next QuickFix item - "]c"' })
vim.keymap.set('n', '<leader>cc', '<cmd>cclose<cr>', { desc = '[C]lose QuickFix List - "leader cc"' })


-- Highlight
vim.keymap.set('n', '<leader>nh', '<cmd>noh<cr>', { desc = 'Remove highlighting - "leader nh"' })

-- Replace
vim.keymap.set('n', '<leader>rb', "yiw{v}:s/\\<<c-r>0\\>//g<left><left>", { desc = '[R]eplace word in the current [B]lock - "leader rb"' })
vim.keymap.set('n', '<leader>rf', ':%s/\\<<c-r><c-w>\\>//g<left><left>', { desc = '[R]eplace word in [F]ile - "leader rf"' })
vim.keymap.set('n', '<leader>rl', ':s/\\<<c-r><c-w>\\>//g<left><left>', { desc = '[R]eplace word in [L]ine - "leader rl"' })
vim.keymap.set('i', '<leader>rr', "<esc>:%s///g<left><left><left>", { desc = 'Move into [R]eplace qucikly - "leader rr"' })
vim.keymap.set('n', '<leader>rr', "<esc>:%s///g<left><left><left>", { desc = 'Move   into [R]eplace qucikly - "leader rr"' })

-- Increase Size of Current Buffer
vim.keymap.set('n', '<leader>[', ':vertical resize -10<cr>:resize -10<cr>', { desc = 'Increase the size of the current buffer - "leader ["' })
vim.keymap.set('n', '<leader>]', ':vertical resize +10<cr>:resize +10<cr>', { desc = 'Increase the size of the current buffer - "leader ]"' })

-- Abbreviations
vim.keymap.set('n', '<leader>emb', 'ofrom IPython import embed; embed()<esc>j', { desc = 'Insert an Embed() line below the cursor - "leader emb"' })
vim.keymap.set('n', '<leader>dbg', 'o\'dbg;<esc>j', { desc = 'Insert a Debugging line below the cursor - "leader dbg"' })
