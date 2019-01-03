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

### Keybindings
1. `<Space>` is bound as `<Leader>`
2. Tab triggers Emmet
3. `<Leader>w` triggers :update
4. `<Leader>q` :qall
5. Use ctrl+[hjkl] to navigate between splits (including NERDTree)
6. `<Leader>n` Focuses / Opens NERDTree window and highlights the current file
7. `<Leader>b` Toggles NERDTree window
8. `gf` opens new split with file under cursor
9. `gT` and `gt` navigates back and forth between tabs
10. `g-[1-9]` goes to a specific tab
11. `jk` exits insert mode
12. `ctrl+e` triggers TeaCode expander
13. `K` (capital K) searches for word under cursor
14. `%` jump between corresponding <tags>
15. shift+tab (`<S-Tab>`) opens the autocomplete menu
16. `<Leader>nr` makes a new narrow split with the current visual selection

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
