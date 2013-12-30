" Path to the bundle folder
let bundle_path = "~/.vim/bundle"
 
" Vundle
exec ":set runtimepath+=" . bundle_path . "/vundle/"
call vundle#rc()
Bundle 'gmarik/vundle'

" Personal settings
Bundle 'flipxfx/vim-settings'

" Load external myvimrc from personal settings
exec ":source " . bundle_path . "/vim-settings/vimrc.vim"
