" don't spam the user when Vim is started in Vi compatibility mode
let s:cpo_save = &cpo
set cpo&vim

augroup vim-go
  autocmd!

  autocmd BufNewFile *.go if &modifiable | setlocal fileencoding=utf-8 fileformat=unix | endif
  autocmd BufNewFile *.go call go#auto#template_autocreate()

  autocmd BufNewFile *.s if &modifiable | setlocal fileencoding=utf-8 fileformat=unix | endif
augroup end

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save
