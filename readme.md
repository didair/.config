## Installation
`TODO`

But basically clone this repo to ~/ and symlink the .vimrc to ~/ & autoload folder to `~/.vim/autoload`.

## Shell
### Powerline
Here's a good resource on installing Powerline and configuring it for bash:
https://medium.com/@ITZDERR/how-to-install-powerline-to-pimp-your-bash-prompt-for-mac-9b82b03b1c02

Note that you can skip the Vim parts, since this config uses it's own status
line file.

### Tmux
No tmux config is currently present in this configuration.

### Notes about iTerm2
Remember to set the font to a powerline compatible font in iTerm > Preferences
as well.

## Vim
### Themes

* https://vimcolors.com/823/blayu/dark
* https://vimcolors.com/871/synthetic/dark
* https://vimcolors.com/874/snazzy/dark `(default)`
* https://vimcolors.com/813/night-owl/dark

### Plugins
* https://github.com/chrisbra/NrrwRgn
* https://github.com/scrooloose/nerdtree
* https://github.com/airblade/vim-gitgutter
* https://github.com/valloric/matchtagalways
* https://github.com/mattn/emmet-vim
* https://github.com/cakebaker/scss-syntax.vim
* https://github.com/pangloss/vim-javascript
* https://github.com/mxw/vim-jsx
* https://github.com/lumiliet/vim-twig
* https://github.com/sjl/vitality.vim
* https://github.com/dustinknopoff/TeaCode-Vim-Extension

### Extend the configuration
Want to make your own changes that doesnt affect the repository?

Create a file named `.vimrc.local` in the `~/.config` directory, all settings made
in that file will overwrite the settings in this repo.

### Other notes
1. Why no Powerline in Vim?

Instead of Powerline i included the .vimrc.statusline, it's a "ghetto" powerline
and it looks about the same if a powerline font is configured for the terminal.
But why? Well basically Powerline kills performance in Vim and for some it's to
the point where it makes it unusable.

2. What is TeaCode?

It's an awesome snippet manager for Mac OS, you can read more about it here: https://www.apptorium.com/teacode
If you don't want the plugin installed you should be able to do an `Unplug
'dustinknopoff/Teacode-Vim-Extension` in your `.vimrc.local` file.

## Todo
1. Write a very simple installation script that creates the symlinks needed.
2. Also include python setup etc. In the installation section of this readme
