-- lua/nomura

function _TELE_FILES(directory)
	require("telescope.builtin").find_files({
		cwd = directory,
		hidden = false,
	})
end

function _TELE_GREP(directory)
	require("telescope.builtin").live_grep({
		cwd = directory,
		hidden = false,
	})
end

function _TELE_WORD(directory)
	require("telescope.builtin").grep_string({
		cwd = directory,
		hidden = false,
	})
end

local mapping_options = { noremap = true, silent = false, }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>fo", "<cmd>lua _TELE_FILES('~/.vim/plugin')<cr>", mapping_options)
keymap("n", "<leader>fv", "<cmd>lua _TELE_FILES('~/.config/nvim')<cr>", mapping_options)
keymap("n", "<leader>fr", "<cmd>lua _TELE_FILES('~/repos')<cr>", mapping_options)
keymap("n", "<leader>fn", "<cmd>lua _TELE_FILES('~/notes')<cr>", mapping_options)

keymap("n", "<leader>ra", "<cmd>lua _TELE_GREP('~/repos/analytics')<cr>", mapping_options)
keymap("n", "<leader>rc", "<cmd>lua _TELE_GREP('~/repos/data-cluster-core')<cr>", mapping_options)
keymap("n", "<leader>rr", "<cmd>lua _TELE_GREP('~/repos/rte-core')<cr>", mapping_options)
keymap("n", "<leader>rs", "<cmd>lua _TELE_GREP('~/repos/dataplant-schema')<cr>", mapping_options)

keymap("n", "<leader>aa", "<cmd>lua _TELE_WORD('~/repos/analytics')<cr>", mapping_options)
keymap("n", "<leader>ac", "<cmd>lua _TELE_WORD('~/repos/data-cluster-core')<cr>", mapping_options)
keymap("n", "<leader>ar", "<cmd>lua _TELE_WORD('~/repos/rte-core')<cr>", mapping_options)
keymap("n", "<leader>as", "<cmd>lua _TELE_WORD('~/repos/dataplant-schema')<cr>", mapping_options)
