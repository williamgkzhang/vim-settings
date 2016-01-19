# Vim Settings

The basic idea behind vim-settings is to sync Vim settings in a git repository using [vim-lug](https://github.com/junegunn/vim-plug).
The solution is built with my settings embedded for others to use or fork and customize.
The current settings are built to use with [Neovim](https://neovim.io).
Once setup, any customizations and updates are synced via vim-plug.
In addition, as people fork the repo we can all take from each other and have a nice little place to see what others are doing.

### Install
- If you want to customize the settings, then fork this repository first
- Install [Hack](https://github.com/chrissimpkins/Hack#desktop-usage) font
- Open Vim and open your local Vim settings file with `:e $MYVIMRC`
- Change your local Vim settings to [init.vim](init.vim), updating [`editor_path`](vimrc#L2) and [`settings_username`](vimrc#L4)
- Run `:so $MYVIMRC`

### Pull Update
- Run `:PlugUpdate`
- Run `:so $MYVIMRC`
- And if new bundles are added to vim-settings [vim-settings.vim](vim-settings.vim), run `:PluginInstall`

### Make Update
- You will need to have forked vim-settings to do this
- Make changes to vim-settings
    - You can open the vim-settings settings file with `:e $VIMSETTINGS`
- Commit and push the changes via git (use vim-fugitive for quicker results)
