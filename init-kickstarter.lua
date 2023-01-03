require('kickstart/packer')
require('kickstart/options')
require('kickstart/keymaps')
require('kickstart/highlight')
require('kickstart/misc')
require('kickstart/telescope')
require('kickstart/toggleterm')
require('kickstart/treesitter')
require('kickstart/lsp')
require('kickstart/autocommands')

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})
