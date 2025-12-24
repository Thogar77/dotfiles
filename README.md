
# Dotfiles

Personal dotfiles for a Linux development environment.

Managed with GNU Stow.

## Included

- Neovim
- tmux
- zsh (Oh My Zsh + Powerlevel10k)
- Alacritty
- Shared shell configuration

## Structure



dotfiles/
├── nvim/
│   └── .config/nvim/
├── tmux/
│   └── .tmux.conf
├── zsh/
│   └── .zshrc
├── alacritty/
│   └── .config/alacritty/
├── shell/
│   └── .shell_common
├── install_dev_env.sh
└── README.md

```

Each directory mirrors its destination in `$HOME`.

## GNU Stow

GNU Stow is used to create symlinks from this repository into the home directory.

Example:

```

dotfiles/nvim/.config/nvim/init.lua
→ ~/.config/nvim/init.lua

````

## Install

```bash
git clone git@github.com:YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install_dev_env.sh
./install_dev_env.sh
````

## Manual usage

```bash
cd ~/dotfiles
stow nvim tmux zsh alacritty shell
```

Remove links:

```bash
stow -D nvim
```

## Notes

* Neovim is configured using lazy.nvim
* Alacritty transparency and blur are handled by the compositor
* tmux uses vim-style keybindings
* zsh uses Powerlevel10k


