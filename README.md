# Vim Settings

Personal vim settings. Poke around. Take what you want. Tell me you love me.

The basic idea behind vim-settings is to sync Vim settings in a git repository using Vundle. 
The solution is built with my settings embedded for others to use or fork and customize. 
Once setup, any customizations and updates are synced via Vundle.
In addition, as people fork the repo we can all take from each other and have a nice little place to see what others are doing.

### Install
- If you want to customize the Vim settings, then fork this repository first
- Install font
 - Mac - [Monaco for Powerline](Monaco for Powerline.otf)
 - Windows - [DejaVu Sans Mono for Powerline](DejaVu Sans Mono for Powerline.ttf)
- Install [vundle](https://github.com/gmarik/vundle) with ``git clone https://github.com/gmarik/Vundle.vim.git PATH_TO_VUNDLE_FOLDER``
 - Mac - ``~/.vim/bundle/vundle``
 - Windows - ``C:/Users/USERNAME/vimfiles/bundle/vundle``
- Open Vim and open your local Vim settings file with ``:e $MYVIMRC``
- Change your local Vim settings to [vimrc](vimrc), updating [``vimsettings_bundlepath``](vimrc#L2) and [``vimsettings_username``](vimrc#L4)
- Run ``:so $MYVIMRC``
- Run ``:VimSettingsInit`` to install vim-settings and plugins within vim-settings

### Pull Update
- Run ``:PluginUpdate``
- Run ``:so $MYVIMRC``
- And if new bundles are added to vim-settings [vim-settings.vim](vim-settings.vim), run ``:PluginInstall``

### Make Update 
- You will need to have forked vim-settings to do this
- Make changes to vim-settings
 - You can open the vim-settings settings file with ``:e $VIMSETTINGS`` 
- Commit and push the changes via git (use vim-fugitive for quicker results)
