***REMOVED***!/bin/bash
CURRENT_DIR=$(pwd***REMOVED***
echo "[INFO] Creating dot***REMOVED***le symlinks..."
ln -sf $CURRENT_DIR/nvim ~/.con***REMOVED***g
ln -sf $CURRENT_DIR/.zshrc ~
ln -sf $CURRENT_DIR/.tmux.conf ~

***REMOVED*** ---- Tmux Setup ----
***REMOVED*** Install Tmux
echo "[INFO] Installing Tmux"
if brew list tmux &>/dev/null; then
	echo "[INFO] Tmux is already installed. Update Instead"
	brew upgrade tmux
***REMOVED***
	***REMOVED*** Install tmux if it's not already installed
	echo "Installing tmux..."
	brew install tmux
***REMOVED***

***REMOVED*** Install TPM
echo "[INFO] Installing Tmux Plugin Manager..."
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ -d "$TPM_DIR" ]; then
	echo "[INFO] Directory $TPM_DIR already exists. Update instead"
	git -C "$TPM_DIR" pull origin master
***REMOVED***
	***REMOVED*** If the directory does not exist, clone the repository
	git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
***REMOVED***

***REMOVED*** ---- NeoVim Setup ----
echo "[INFO] Installing NeoVim..."
if brew list neovim &>/dev/null; then
	echo "Neovim is already installed. Updating..."
	brew upgrade neovim
***REMOVED***
	echo "Installing Neovim..."
	brew install neovim
***REMOVED***

***REMOVED*** ---- Ripgrep for Neovim ----
echo "[INFO] Installing optional dependencies for Lazy.vim ripgrep fd"
if brew list ripgrep &>/dev/null; then
	echo "[INFO] ripgrep or fd is already installed. Update Instead"
	brew upgrade ripgrep fd
***REMOVED***
	***REMOVED*** Install tmux if it's not already installed
	echo "Installing tmux..."
	brew install ripgrep fd
***REMOVED***
