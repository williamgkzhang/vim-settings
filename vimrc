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

" vim-settings init helper
if exists("vimsettingsinit_loaded")
  finish
endif
let vimsettingsinit_loaded = 1
function! VimSettingsInit()
  execute ":PluginInstall"
  execute ":bd"
  execute ":so $MYVIMRC"
  execute ":PluginInstall"
  execute ":bd"
  execute ":so $MYVIMRC"
endfunction
command! -bar -nargs=0 VimSettingsInit call VimSettingsInit()
