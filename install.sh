#!/usr/bin/env bash

# Install script for devpod
function install_nvim_tarball() {
  nvim_download_path=/tmp/nvim-linux-arm64.tar.gz
  nvim_target=/opt/nvim

  curl -Lo "$nvim_download_path" https://github.com/neovim/neovim/releases/download/v0.12.2/nvim-linux-arm64.tar.gz

  sudo rm -rf "${nvim_target}"
  sudo mkdir -p "${nvim_target}"
  sudo tar -C "${nvim_target}" --strip-components=1 -xzf "$nvim_download_path"
  rm -rf "$nvim_download_path"

  if ! "${nvim_target}/bin/nvim" --version; then
    echo "nvim binary in ${nvim_target}/bin cannot be opened. Install from nvim tarball failed"
    sudo rm -rf "${nvim_target}"
    return 1
  fi
  if ! grep -Fxq "export PATH=\"\$PATH:${nvim_target}/bin\"" "$HOME/.zshrc"; then
    echo "export PATH=\"\$PATH:${nvim_target}/bin\"" >>$HOME/.zshrc
  fi

  export PATH="$PATH:${nvim_target}/bin"
  echo "INSTALLED nvim"
}

sudo apt update
sudo apt install fd-find fzf lazygit ripgrep

install_nvim_tarball
