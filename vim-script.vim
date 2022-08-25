" inoremap <silent><expr><bs> 
"   \ (&indentexpr isnot '' ? &indentkeys : &cinkeys) =~? '!\^F' &&
"   \ &backspace =~? '.*eol\&.*start\&.*indent\&' &&
"   \ !search('\S','nbW',line('.')) ? (col('.') != 1 ? "\<C-U>" : "") .
"   \ "\<bs>" . (getline(line('.')-1) =~ '\S' ? "" : "\<C-F>") : "\<bs>"
"
"
"
"
" if exists("g:neovide")
"     " Put anything you want to happen only in Neovide here
" endif
"

