-- lua/nomura

keymap("n", "<leader>ra", "<cmd>lua _TELE_GREP('~/repos/analytics')<cr>", mapping_options)
keymap("n", "<leader>rc", "<cmd>lua _TELE_GREP('~/repos/data-cluster-core')<cr>", mapping_options)
keymap("n", "<leader>rr", "<cmd>lua _TELE_GREP('~/repos/rte-core')<cr>", mapping_options)
keymap("n", "<leader>rs", "<cmd>lua _TELE_GREP('~/repos/dataplant-schema')<cr>", mapping_options)

keymap("n", "<leader>aa", "<cmd>lua _TELE_WORD('~/repos/analytics')<cr>", mapping_options)
keymap("n", "<leader>ac", "<cmd>lua _TELE_WORD('~/repos/data-cluster-core')<cr>", mapping_options)
keymap("n", "<leader>ar", "<cmd>lua _TELE_WORD('~/repos/rte-core')<cr>", mapping_options)
keymap("n", "<leader>as", "<cmd>lua _TELE_WORD('~/repos/dataplant-schema')<cr>", mapping_options)
