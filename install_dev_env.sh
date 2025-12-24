#!/usr/bin/env bash
set -e

echo "== Dev environment installer =="

# -----------------------
# helpers
# -----------------------
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

install_apt() {
  sudo apt install -y "$@"
}

# -----------------------
# update
# -----------------------
echo "Updating package list..."
sudo apt update

# -----------------------
# base tools
# -----------------------
if ! command_exists git; then
  install_apt git
fi

if ! command_exists curl; then
  install_apt curl
fi

# -----------------------
# Stow dotfiles
# -----------------------
DOTFILES_DIR="$HOME/dotfiles"

if [ -d "$DOTFILES_DIR" ]; then
  echo "Linking dotfiles with GNU Stow..."
  cd "$DOTFILES_DIR"
  stow nvim tmux zsh alacritty shell
else
  echo "Dotfiles directory not found: $DOTFILES_DIR"
fi

# -----------------------
# Neovim
# -----------------------
if ! command_exists nvim; then
  echo "Installing Neovim..."
  install_apt neovim
else
  echo "Neovim already installed"
fi

# -----------------------
# tmux
# -----------------------
if ! command_exists tmux; then
  echo "Installing tmux..."
  install_apt tmux
else
  echo "tmux already installed"
fi

# -----------------------
# Alacritty
# -----------------------
if ! command_exists alacritty; then
  echo "Installing Alacritty..."
  install_apt alacritty
else
  echo "Alacritty already installed"
fi

# -----------------------
# ripgrep
# -----------------------
if ! command_exists rg; then
  echo "Installing ripgrep..."
  install_apt ripgrep
else
  echo "ripgrep already installed"
fi

# -----------------------
# zsh
# -----------------------
if ! command_exists zsh; then
  echo "Installing zsh..."
  install_apt zsh
else
  echo "zsh already installed"
fi

# -----------------------
# Oh My Zsh
# -----------------------
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  RUNZSH=no CHSH=no \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh already installed"
fi

# -----------------------
# Powerlevel10k
# -----------------------
P10K_DIR="$HOME/powerlevel10k"

if [ ! -d "$P10K_DIR" ]; then
  echo "Installing Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
else
  echo "Powerlevel10k already installed"
fi

# -----------------------
# default shell
# -----------------------
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "Setting zsh as default shell..."
  chsh -s "$(which zsh)"
fi

echo "== DONE =="
echo "Restart terminal or run: exec zsh"

