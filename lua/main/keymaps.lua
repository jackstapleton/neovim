
local mapping_options = { noremap = true, silent = false, }
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", mapping_options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- reload lua
keymap("n", "<leader>r", "<cmd>source /home/jack/.config/nvim/init.lua<cr>", mapping_options)
-- shortcuts
keymap("n", "Q", "@q", mapping_options)         -- easily run recording
keymap("i", "jk", "<esc>", mapping_options)     -- easily escape from insert mode
keymap("n", ";", ":", mapping_options)          -- easily enter command mode
keymap("n", "<cr>", "o<esc>0D", mapping_options)  -- easily enter command mode
keymap("n", "<leader>s", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/g<left><left>", mapping_options) -- search and replace
keymap("n", "<leader>zz", ":%s/\\s\\+$//g<cr>", mapping_options)                           -- zap whitespace
keymap("n", "<leader>zt", ":%s/\\t/    /g<cr>", mapping_options)                           -- replace tabs with spaces
keymap("n", "<leader>db", "o'dbg;<esc>", mapping_options)
keymap("n", "<leader>em", "ofrom IPython import embed; embed()<esc>", mapping_options)
-- toggle settings
keymap("n", "<leader?x", "<cmd>call ToggleVim()<cr>", mapping_options)
-- keeping it centered
keymap("n", "n", "nzz", mapping_options)
keymap("n", "N", "Nzz", mapping_options)
-- buffers
keymap("n", "<S-l>", ":bnext<CR>", mapping_options)
keymap("n", "<S-h>", ":bprevious<CR>", mapping_options)
keymap("n", "<leader>c", "<cmd>w <bar> %bd <bar> e# <bar> bd# <CR><CR>", mapping_options)
-- tree
keymap("n", "<leader>t", ":NvimTreeToggle<cr>", mapping_options)
-- telescope
keymap("n", "<c-f>", "<cmd>Telescope find_files<cr>", mapping_options)
keymap("n", "<c-g>", "<cmd>Telescope live_grep<cr>", mapping_options)
keymap("n", "<c-a>", "<cmd>Telescope grep_string<cr>", mapping_options)
keymap("n", "<leader>b", "<cmd>lua require('main.telescope').grep_buffers()<cr>", mapping_options)
-- toggleterm
keymap("n", "<leader>pf", ":lua _TESTPLAN_TOGGLE('')<left><left>", mapping_options)
keymap("n", "<leader>pa", ":lua _TESTPLAN_TOGGLE('')<cr>", mapping_options)
keymap("n", "<leader>pj", ":lua _TESTPLAN_TOGGLE('Join')<cr>", mapping_options)
keymap("n", "<leader>pp", ":lua _TESTPLAN_TOGGLE('PreProc')<cr>", mapping_options)
keymap("n", "<leader>pu", ":lua _TESTPLAN_TOGGLE('Upd')<cr>", mapping_options)
keymap("n", "<leader>q", "<cmd>lua _Q_TOGGLE()<cr>", mapping_options)
-- yank, move below, paste, move back
keymap("i", "<c-y>", "<esc>yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>ki", mapping_options)
keymap("i", "<leader>yy", "<esc>yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>ki", mapping_options)
keymap("i", "<leader>yp", "<esc>yap<c-w>j<c-\\><c-n>im<cr><c-\\><c-n>pi<cr>end<cr><c-\\><c-n><c-w>ki", mapping_options)
keymap("i", "<leader>yf", "<esc><cmd>%y+<cr><c-w>j<c-\\><c-n>im<cr><c-\\><c-n>pi<cr>end<cr><c-\\><c-n><c-w>ki", mapping_options)
keymap("n", "<c-y>", "yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>k", mapping_options)
keymap("n", "<leader>yy", "yy<c-w>j<c-\\><c-n>pi<cr><c-\\><c-n><c-w>k", mapping_options)
keymap("n", "<leader>yp", "yap<c-w>j<c-\\><c-n>im<cr><c-\\><c-n>pi<cr>end<cr><c-\\><c-n><c-w>k", mapping_options)
keymap("n", "<leader>yf", "<cmd>%y+<cr><c-w>j<c-\\><c-n>im<cr><c-\\><c-n>pi<cr>end<cr><c-\\><c-n><c-w>k", mapping_options)
-- split navigation
keymap("n", "<C-h>", "<C-w>h", mapping_options)
keymap("n", "<C-j>", "<C-w>j", mapping_options)
keymap("n", "<C-k>", "<C-w>k", mapping_options)
keymap("n", "<C-l>", "<C-w>l", mapping_options)
keymap("n", "<leader>o", ":only<cr>", mapping_options)
keymap("n", "<leader>v", ":vert sbn<cr>", mapping_options)
-- split resize
keymap("n", "<leader>[", "<cmd>resize -5<cr>", mapping_options)
keymap("n", "<leader>]", "<cmd>resize +5<cr>", mapping_options)
-- line numbers
keymap("n", "<leader>no", ":set nonumber norelativenumber<cr>", mapping_options)
keymap("n", "<leader>nu", ":set number norelativenumber<cr>", mapping_options)
keymap("n", "<leader>nr", ":set number relativenumber<cr>", mapping_options)
-- git signs
keymap("n", "gb", "<cmd>Gitsigns blame_line<cr>", mapping_options)
keymap("n", "(", "<cmd>Gitsigns prev_hunk<cr>", mapping_options)
keymap("n", ")", "<cmd>Gitsigns next_hunk<cr>", mapping_options)
keymap("n", "gp", "<cmd>Gitsigns preview_hunk<cr>", mapping_options)
keymap("n", "gu", "<cmd>Gitsigns reset_hunk<cr>", mapping_options)
-- treesitter
keymap("n", "tsh", "<cmd>TSHighlightCapturesUnderCursor<cr>", mapping_options)
keymap("n", "tsp", "<cmd>TSPlaygroundToggle<cr>", mapping_options)
keymap("n", "tsu", "<cmd>TSUpdate<cr>", mapping_options)
-- luasnip
keymap("i", "<silent><C-k>", "<cmd>lua require('luasnip').jump(1)<cr>", mapping_options)
keymap("i", "<silent><C-j>", "<cmd>lua require('luasnip').jump(-1)<cr>", mapping_options)
-- quickly open files
keymap("n", "<leader>wb", "<cmd>vsp ~/.bash_profile<cr>", mapping_options)
keymap("n", "<leader>wt", "<cmd>vsp ~/notes/temp.txt<cr>", mapping_options)
