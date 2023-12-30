#!/bin/bash

echo "stow ./run-scripts"
stow -D scripts
sudo stow -d scripts -t /usr/local/bin .

echo "stow ./settings"
stow -D settings
stow -d settings -t ~ .
