# Setup

Clone the repo and use `stow` to configure the parts that you want.
An example that enables everything:

```
# First, install stow, e.g., brew install stow
git clone https://github.com/David3141/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow ghostty
stow jetbrains
stow karabiner
stow nvim
stow zed
stow zsh
```

Stow automatically targets the parent directory of where you run it from.
So this only works if you clone the `dotfiles` folder into `$HOME` (like above).
If you want to store them somewhere else, use `stow` with a `--target` option.

