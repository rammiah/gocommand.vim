" -- impl
command! -nargs=* -complete=customlist,go#impl#Complete GoImpl call go#impl#Impl(<f-args>)
" -- template
command! -nargs=0 GoTemplateAutoCreateToggle call go#template#ToggleAutoCreate()
" -- alternate
command! -bang GoAlternate call go#alternate#Switch(<bang>0, '')
