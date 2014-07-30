" Path to the bundle folder
let bundle_path = "PATH_TO_BUNDLE_FOLDER"

" Vundle
exec ":set runtimepath+=" . bundle_path . "/vundle/"
call vundle#rc(bundle_path)
Bundle 'gmarik/vundle'

" Personal settings
Bundle 'flipxfx/vim-settings'

" Load external myvimrc from personal settings
if filereadable(bundle_path . "/vim-settings/vimrc.vim")
  exec ":source " . bundle_path . "/vim-settings/vimrc.vim"
endif
