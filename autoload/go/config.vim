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

function! go#config#TemplateAutocreate() abort
  return get(g:, "go_template_autocreate", 1)
endfunction

function! go#config#TemplateUsePkg() abort
  return get(g:, 'go_template_use_pkg', 0)
endfunction

function! go#config#TemplateTestFile() abort
  return get(g:, 'go_template_test_file', "hello_world_test.go")
endfunction

function! go#config#TemplateFile() abort
  return get(g:, 'go_template_file', "hello_world.go")
endfunction

function! go#config#BuildTags() abort
  return get(g:, 'go_build_tags', '')
endfunction

function! go#config#SetBuildTags(value) abort
  if a:value is ''
    silent! unlet g:go_build_tags
    call go#lsp#ResetWorkspaceDirectories()
    return
  endif

  let g:go_build_tags = a:value
  call go#lsp#ResetWorkspaceDirectories()
endfunction

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
