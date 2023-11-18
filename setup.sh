***REMOVED***!/bin/bash
ln -s nvim ~/.con***REMOVED***g
ln -s .zshrc ~
ln -s .tmux.conf ~

***REMOVED*** Install Tmux
if brew list tmux &>/dev/null; then
    echo "tmux is already installed. Update Instead"
    brew upgrade tmux
***REMOVED***
    ***REMOVED*** Install tmux if it's not already installed
    echo "Installing tmux..."
    brew install tmux
***REMOVED***

***REMOVED*** Install TPM
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ -d "$TPM_DIR" ]; then
    echo "Directory $TPM_DIR already exists. Update instead"
  ***REMOVED***-C "$TPM_DIR" pull origin master
***REMOVED***
    ***REMOVED*** If the directory does not exist, clone the repository
  ***REMOVED***clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
***REMOVED***
