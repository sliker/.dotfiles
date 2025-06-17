# .dotfiles 

## Prerequisite

- Install prettierd

```bash
brew install prettierd
```

- Install ripgrep

```bash
brew install ripgrep
```

- Install FiraCode font from https://www.nerdfonts.com/font-downloads

## Installation

1. stow all the folders

```bash
stow -t ~ nvim
stow -t ~ vim
stow -t ~ tmux
stow -t ~ qtile
stow -t ~ fontconfig
stow -t ~ alacritty
```

2. Open the packer file using nvim `nvim/.config/nvim/lua/dvu/packer.lua`

3. Source this file with `:so`

4. Run installation of the nvim plugins running `:PackerInstall`
