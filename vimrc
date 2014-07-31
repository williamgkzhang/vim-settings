" Path to the bundle folder
let vimsettings_bundlepath = "BUNDLE_PATH"
" Git username of vim-settings
let vimsettings_username = "USERNAME"

" Vundle
exec ":set runtimepath+=" . vimsettings_bundlepath . "/vundle/"
call vundle#rc(vimsettings_bundlepath)
Plugin 'gmarik/vundle'

" Personal settings
Plugin vimsettings_username . '/vim-settings'

" Load external myvimrc from personal settings
if filereadable(vimsettings_bundlepath . "/vim-settings/vimrc.vim")
  let $VIMSETTINGS = vimsettings_bundlepath . "/vim-settings/vimrc.vim"
  exec ":source " . $VIMSETTINGS
endif

" vim-settings init helper
if exists("vimsettings_loaded")
  finish
endif
let vimsettings_loaded = 1
function! VimSettingsInit()
  execute ":PluginInstall"
  execute ":bd"
  execute ":so $MYVIMRC"
  execute ":PluginInstall"
  execute ":bd"
  execute ":so $MYVIMRC"
endfunction
command! -bar -nargs=0 VimSettingsInit call VimSettingsInit()
