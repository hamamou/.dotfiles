vim.cmd [[
augroup Prettier
  au!
  au BufWritePre *.tsx,*.ts,*.js,*.html,*.css  Prettier
augroup END
]]
