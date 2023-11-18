#!/bin/bash
# Install OMZ
# placeholder

# Install Starship for OMZ
# placeholder

# ---- OMZ Plugin setup ----
echo "[INFO] Installing OMZ plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ---- symlinks setup ----
CURRENT_DIR=$(pwd)
echo "[INFO] Creating dotfile symlinks..."
ln -sf $CURRENT_DIR/nvim ~/.config
ln -sf $CURRENT_DIR/.zshrc ~
ln -sf $CURRENT_DIR/.tmux.conf ~

# ---- Tmux Setup ----
# Install Tmux
echo "[INFO] Installing Tmux"
if brew list tmux &>/dev/null; then
	echo "[INFO] Tmux is already installed. Update Instead"
	brew upgrade tmux
else
	# Install tmux if it's not already installed
	echo "Installing tmux..."
	brew install tmux
fi

# Install TPM
echo "[INFO] Installing Tmux Plugin Manager..."
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ -d "$TPM_DIR" ]; then
	echo "[INFO] Directory $TPM_DIR already exists. Update instead"
	git -C "$TPM_DIR" pull origin master
else
	# If the directory does not exist, clone the repository
	git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

# ---- NeoVim Setup ----
echo "[INFO] Installing NeoVim..."
if brew list neovim &>/dev/null; then
	echo "Neovim is already installed. Updating..."
	brew upgrade neovim
else
	echo "Installing Neovim..."
	brew install neovim
fi

# ---- Ripgrep for Neovim ----
echo "[INFO] Installing optional dependencies for Lazy.vim ripgrep fd"
if brew list ripgrep &>/dev/null; then
	echo "[INFO] ripgrep or fd is already installed. Update Instead"
	brew upgrade ripgrep fd
else
	# Install tmux if it's not already installed
	echo "Installing tmux..."
	brew install ripgrep fd
fi
