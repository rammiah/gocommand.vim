" don't spam the user when Vim is started in Vi compatibility mode
let s:cpo_save = &cpo
set cpo&vim


function! go#config#BinPath() abort
  return get(g:, "go_bin_path", "")
endfunction

function! go#config#SearchBinPathFirst() abort
  return get(g:, 'go_search_bin_path_first', 1)
endfunction

function! go#config#AlternateMode() abort
  return get(g:, "go_alternate_mode", "edit")
endfunction

function! go#config#Debug() abort
  return get(g:, 'go_debug', [])
endfunction

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
