if exists("indentswitch_loaded")
  finish
endif
let indentswitch_loaded = 1

if !exists('g:indentswitch_indent')
  let g:indentswitch_indent = "spaces"
endif

function! Ispaces()
  let g:indentswitch_indent = "spaces"
  set expandtab
  set smarttab
  echo "Space Indentation"
endfunction

function! Itabs()
  let g:indentswitch_indent = "tabs"
  set noexpandtab
  set nosmarttab
  echo "Tab Indentation"
endfunction

function! Itoggle()
  if g:indentswitch_indent == "tabs"
    call Ispaces()
  else
    call Itabs()
  endif
endfunction

function! Ishow()
  if g:indentswitch_indent == "tabs"
    echo "Tab Indentation"
  else
    echo "Space Indentation"
  endif
endfunction

if g:indentswitch_indent == "tabs"
  set noexpandtab
  set nosmarttab
else
  set expandtab
  set smarttab
endif

command! -bar -nargs=0 Itoggle call Itoggle()
command! -bar -nargs=0 Itabs call Itabs()
command! -bar -nargs=0 Ispaces call Ispaces()
command! -bar -nargs=0 Ishow call Ishow()

map <leader>it :Itoggle<cr>
map <leader>i<tab> :Itabs<cr>
map <leader>i<space> :Ispaces<cr>
map <leader>is :Ishow<cr>
map <leader>ir gg=G''
