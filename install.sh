#!/bin/bash

echo "### Installing/Updating Brew dependencies"
echo "Installing chunkwm and skhd..."
brew tap crisidev/homebrew-chunkwm
brew install chunkwm
brew install koekeishiya/formulae/skhd

echo "### Configuring Vim"

echo "Creating symbolic links for Vim..."
ln -s "$HOME/.config/.vimrc" "$HOME/.vimrc"
ln -sf "$HOME/.config/autoload" "$HOME/.vim/"

echo "### Configuring chunkwm"

echo "Creating symbolic links for ChunkWM and skhd..."
ln -s "$HOME/.config/.chunkwmrc" "$HOME/.chunkwmrc"
ln -s "$HOME/.config/.skhdrc" "$HOME/.skhdrc"

echo "Making chunkwm executable..."
chmod +x $HOME/.chunkwmrc

echo "### Everything was completed, if any error occured you should see them above!"
echo "### You should now be able to open vim and run :PlugInstall to get started"

echo "### To add chunkwm to startup services, run these commands"
echo "$ brew services start chunkwm"
echo "$ brew services start skb"
