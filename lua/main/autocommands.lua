
-- command to auto source a .lua file if it is saved
vim.cmd [[
  augroup neovim_custom_setup
    autocmd!
  augroup end
  autocmd neovim_custom_setup BufWritePost *.lua source <afile>
]]


-- set filetype dependent options
vim.cmd [[
  augroup neovim_custom_filetype_opts
    autocmd!
  augroup end

  autocmd neovim_custom_filetype_opts BufNewFile,BufRead *.q set filetype=q

  autocmd neovim_custom_filetype_opts FileType q setlocal commentstring=/\ %s

  au neovim_custom_filetype_opts BufNewFile,BufRead *.yaml,*.yml,*.js,*.html,*.css,*.json,*.lua
      \ set tabstop=2 |
      \ set softtabstop=2 |
      \ set shiftwidth=2

  au neovim_custom_filetype_opts BufNewFile,BufRead *.q,*.sh,*.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4

  au neovim_custom_filetype_opts BufNewFile,BufRead *.html set filetype=htmldjango

]]
