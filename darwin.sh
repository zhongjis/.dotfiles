#!/bin/bash

echo "stow ./run-scripts"
stow -D "run-scripts"
stow -d "run-scripts" -t "/usr/local/bin" .

echo "stow ./settings"
stow -D "./settings"
stow -d ./settings -t ~ .
