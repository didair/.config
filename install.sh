#!/bin/bash

echo "Creating symbolic links for Vim..."
ln -s "$HOME/.config/.vimrc" "$HOME/.vimrc"
ln -sf "$HOME/.config/autoload" "$HOME/.vim/"

echo "Creating symbolic links for ChunkWM and skhd..."
ln -s "$HOME/.config/.chunkwmrc" "$HOME/.chunkwmrc"
ln -s "$HOME/.config/.skhdrc" "$HOME/.skhdrc"

echo "Done!"
