" don't spam the user when Vim is started in Vi compatibility mode
let s:cpo_save = &cpo
set cpo&vim

function! go#tool#PackageName() abort
  let [l:out, l:err] = go#util#ExecInDir(['go', 'list', '-tags', go#config#BuildTags(), '-f', '{{.Name}}'])
  if l:err != 0
      return -1
  endif

  return split(out, '\n')[0]
endfunction

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save
