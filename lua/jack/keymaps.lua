local mapping_options = {
    noremap = true,
    silent = false,
}

local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", mapping_options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- shortcuts
keymap("i", "jk", "<esc>", mapping_options)     -- easily escape from insert mode
keymap("n", ";", ":", mapping_options)          -- easily enter command mode
keymap("n", "<cr>", "o<esc>", mapping_options)  -- easily enter command mode
keymap("n", "<leader>s", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/g<left><left>", mapping_options)    -- search and replace
keymap("n", "<leader>zz", ":%s/\\s\\+$//g<cr>", mapping_options)                              -- zap whitespace
keymap("n", "<leader>zt", ":%s/\\t/    /g<cr>", mapping_options)                              -- replace tabs with spaces
-- keeping it centered
keymap("n", "n", "nzz", mapping_options)
keymap("n", "N", "Nzz", mapping_options)
-- buffers
keymap("n", "<S-l>", ":bnext<CR>", mapping_options)
keymap("n", "<S-h>", ":bprevious<CR>", mapping_options)
-- tree
keymap("n", "<leader>t", ":NvimTreeToggle<cr>", mapping_options)
-- telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", mapping_options)
keymap("n", "<leader>a", "<cmd>Telescope live_grep<cr>", mapping_options)
keymap("n", "<leader>g", "<cmd>Telescope grep_string<cr>", mapping_options)
keymap("n", "<leader>b", "<cmd>Telescope current_buffer_fuzzy_find<cr>", mapping_options)
-- toggleterm
keymap("n", "<leader>p", "<cmd>lua _PYTHON_TOGGLE()<cr>", mapping_options)
keymap("n", "<leader>q", "<cmd>lua _Q_TOGGLE()<cr>", mapping_options)
-- split navigation
keymap("n", "<C-h>", "<C-w>h", mapping_options)
keymap("n", "<C-j>", "<C-w>j", mapping_options)
keymap("n", "<C-k>", "<C-w>k", mapping_options)
keymap("n", "<C-l>", "<C-w>l", mapping_options)
keymap("n", "<leader>o", ":only<cr>", mapping_options)
-- line numbers
keymap("n", "<leader>no", ":set nonumber norelativenumber<cr>", mapping_options)
keymap("n", "<leader>nu", ":set number norelativenumber<cr>", mapping_options)
keymap("n", "<leader>nr", ":set number relativenumber<cr>", mapping_options)
-- moving lines
-- keymap("i", "<c-j>", "<Esc>:m .+1<CR>==gi", mapping_options)
-- keymap("i", "<c-k>", "<Esc>:m .-2<CR>==gi", mapping_options)
keymap("v", "<c-j>", ":m '>+1<CR>gv=gv", mapping_options)
keymap("v", "<c-k>", ":m '<-2<CR>gv=gv", mapping_options)
