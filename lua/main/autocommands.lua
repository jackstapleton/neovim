
-- command to auto source a .lua file if it is saved
vim.cmd [[
  augroup nvimrc
    autocmd!
  augroup end
  autocmd nvimrc BufWritePost *.lua source <afile>
  au nvimrc BufNewFile,BufRead *.yaml,*.yml,*.html,*.css,*.json,*.lua
      \ set tabstop=2 |
      \ set softtabstop=2 |
      \ set shiftwidth=2
  au nvimrc BufNewFile,BufRead *.q,*.sh,*.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4
  au nvimrc BufNewFile,BufRead *.html set filetype=htmldjango
  au nvimrc BufNewFile,BufRead *JenkinsFile* set filetype=groovy
  au nvimrc BufEnter,BufNew * setlocal number
  au nvimrc BufLeave,WinLeave * setlocal norelativenumber nonumber
  au nvimrc TermEnter * setlocal nonumber norelativenumber
]]

-- set q filetype dependent options
vim.cmd [[
  augroup nvimrc_q
    autocmd!
  augroup end
  autocmd nvimrc_q BufNewFile,BufRead *.q set filetype=q
  autocmd nvimrc_q FileType q setlocal commentstring=/\ %s
]]

vim.cmd [[
  function! ToggleVim()
    set invnumber
    " Gitsigns toggle_signs
    " IndentBlanklineToggle
  endfunction
]]
