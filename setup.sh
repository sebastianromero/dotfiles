#!/usr/bin/env bash
set -euo pipefail

GREEN='\033[0;32m'
NC='\033[0m'

info() { echo -e "${GREEN}==>${NC} $1"; }

OS="$(uname -s)"
INSTALL=""

if [[ "$OS" == "Darwin" ]]; then
  INSTALL="brew install"
  info "Usando Homebrew (macOS)"
elif [[ "$OS" == "Linux" ]]; then
  if command -v apt >/dev/null; then
    INSTALL="sudo apt install -y"
    info "Usando APT (Debian/Ubuntu)"
  elif command -v pacman >/dev/null; then
    INSTALL="sudo pacman -Syu --noconfirm"
    info "Usando pacman (Arch)"
  else
    echo "No se pudo determinar el gestor de paquetes." && exit 1
  fi
else
  echo "Sistema no soportado: $OS"
  exit 1
fi

# Dependencias base
info "Instalando dependencias base"
$INSTALL git curl unzip zsh ripgrep fd

# Starship
if ! command -v starship >/dev/null; then
  info "Instalando Starship"
  curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# Neovim
if ! command -v nvim >/dev/null; then
  info "Instalando Neovim"
  $INSTALL neovim
fi

# Antidote para Zsh
ZSH_CUSTOM="${HOME}/.zsh"
ANTIDOTE_DIR="${ZSH_CUSTOM}/antidote"
if [[ ! -d "$ANTIDOTE_DIR" ]]; then
  info "Instalando Antidote"
  mkdir -p "$ZSH_CUSTOM"
  git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_DIR"
fi

# LazyVim
LAZYVIM_DIR="${HOME}/.config/nvim"
if [[ ! -d "$LAZYVIM_DIR" ]]; then
  info "Instalando LazyVim starter template"
  git clone https://github.com/LazyVim/starter "$LAZYVIM_DIR"
  rm -rf "${LAZYVIM_DIR}/.git"
fi

# Chezmoi
if ! command -v chezmoi >/dev/null; then
  info "Instalando chezmoi"
  sh -c "$(curl -fsLS https://chezmoi.io/get)" -- -b "$HOME/.local/bin"
  export PATH="$HOME/.local/bin:$PATH"
fi

if [[ ! -d "$HOME/.local/share/chezmoi" ]]; then
  info "Clonando dotfiles desde GitHub"
  chezmoi init --apply https://github.com/sebastianromero/dotfiles.git
fi

# WezTerm
if ! command -v wezterm >/dev/null; then
  info "Instalando WezTerm"
  if [[ "$INSTALL" == "brew install" ]]; then
    brew install --cask wezterm
  else
    WEZ_URL=$(curl -s https://api.github.com/repos/wez/wezterm/releases/latest |
      grep "browser_download_url.*\.AppImage" | cut -d '"' -f 4)
    curl -LO "$WEZ_URL"
    chmod +x wezterm-*.AppImage
    sudo mv wezterm-*.AppImage /usr/local/bin/wezterm
  fi
fi

info "✅ Todo instalado correctamente"

