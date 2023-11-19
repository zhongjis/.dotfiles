#!/bin/bash

# Function to install or update a plugin
install_or_update_omz_plugin() {
    local plugin_url="$1"
    local plugin_dir_name="${2:-$(basename $plugin_url .git)}"
    local plugin_path="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/$plugin_dir_name"

    if [ -d "$plugin_path" ]; then
        echo "[INFO] Updating $plugin_dir_name plugin..."
        git -C "$plugin_path" pull origin master
    else
        echo "[INFO] Installing $plugin_dir_name plugin..."
        git clone "$plugin_url" "$plugin_path"
    fi
}

# Function to install or update a Homebrew package
install_or_update_brew_package() {
    local package_name="$1"

    echo "[INFO] Checking $package_name..."
    if brew list $package_name &>/dev/null; then
        echo "[INFO] $package_name is already installed. Updating..."
        brew upgrade $package_name
    else
        echo "[INFO] Installing $package_name..."
        brew install $package_name
    fi
}

# ---- Set Zsh as Default Shell (if not already set) ----
# DEFAULT_SHELL=$(echo $SHELL)
# ZSH_PATH=$(which zsh)

# if [ "$DEFAULT_SHELL" != "$ZSH_PATH" ]; then
#     echo "[INFO] Setting Zsh as the default shell..."
#     chsh -s $(which zsh)
# else
#     echo "[INFO] Zsh is already the default shell."
# fi

# ---- OMZ setup ----
# Install OMZ
# placeholder

# Install Starship Theme for OMZ
# placeholder

echo "[INFO] Installing OMZ plugins"

install_or_update_omz_plugin https://github.com/zsh-users/zsh-autosuggestions
install_or_update_omz_plugin https://github.com/zsh-users/zsh-syntax-highlighting.git

# ---- Tmux Setup ----
install_or_update_brew_package tmux

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
install_or_update_brew_package neovim

# Optional lazy.vim dependencies
install_or_update_brew_package ripgrep
install_or_update_brew_package fd

# ---- symlinks setup ----
CURRENT_DIR=$(pwd)
echo "[INFO] Creating dotfile symlinks..."
ln -sf $CURRENT_DIR/nvim ~/.config
ln -sf $CURRENT_DIR/.zshrc ~
ln -sf $CURRENT_DIR/.tmux.conf ~
