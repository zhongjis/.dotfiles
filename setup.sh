***REMOVED***!/bin/bash
CURRENT_DIR=$(pwd***REMOVED***
echo "[INFO] Current dir: $CURRENT_DIR"
ln -sf $CURRENT_DIR/nvim ~/.con***REMOVED***g
ln -sf $CURRENT_DIR/.zshrc ~
ln -sf $CURRENT_DIR/.tmux.conf ~

***REMOVED*** Install Tmux
if brew list tmux &>/dev/null; then
    echo "[INFO] tmux is already installed. Update Instead"
    brew upgrade tmux
***REMOVED***
    ***REMOVED*** Install tmux if it's not already installed
    echo "Installing tmux..."
    brew install tmux
***REMOVED***

***REMOVED*** Install TPM
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ -d "$TPM_DIR" ]; then
    echo "[INFO] Directory $TPM_DIR already exists. Update instead"
  ***REMOVED***-C "$TPM_DIR" pull origin master
***REMOVED***
    ***REMOVED*** If the directory does not exist, clone the repository
  ***REMOVED***clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
***REMOVED***
