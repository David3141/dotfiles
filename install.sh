#!/usr/bin/env bash

# Install script for devpod
echo "TEST"

brew install stow neovim fd ripgrep lazygit

stow nvim
stow zsh

echo "INSTALLED"
