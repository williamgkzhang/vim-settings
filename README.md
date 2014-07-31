# Vim Settings

Personal vim settings. Poke around. Take what you want. Tell me you love me.

### Install
- Install font
 - Mac - [Monaco for Powerline](Monaco for Powerline.otf)
 - Windows - [DejaVu Sans Mono for Powerline](DejaVu Sans Mono for Powerline.ttf)
- Install [vundle](https://github.com/gmarik/vundle) with ```git clone https://github.com/gmarik/Vundle.vim.git PATH_TO_VUNDLE_FOLDER```
 - Mac - ```~/.vim/bundle/vundle```
 - Windows - ```C:/Users/USERNAME/vimfiles/bundle/vundle```
- Open Vim and open your local Vim settings file with ```:e $MYVIMRC```
- Change your local Vim settings to [vimrc](vimrc), updating [```vimsettings_bundlepath```](vimrc#L2) and [```vimsettings_username```](vimrc#L4)
- Run ```:so $MYVIMRC```
- Run ```:VimSettingsInit``` to install vim-settings and plugins within vim-settings

### Pull Update
- Run ```:PluginUpdate```
- Run ```:so $MYVIMRC```
- And if new bundles are added to vim-settings [vimrc.vim](vimrc.vim), run ```:PluginInstall```

### Make Update 
- You will need to have forked vim-settings to do this
- Make changes to vim-settings locally
- Commit and push the changes via git
