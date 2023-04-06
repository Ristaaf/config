#!/bin/bash

# Install Nix

sh <(curl -L https://nixos.org/nix/install) --no-deamon

. ~/.nix-profile/etc/profile.d/nix.sh

# Install packages

nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.direnv

# Add zsh to allowed login shells

command -v zsh | sudo tee -a /etc/shells 

# Remove duplicates in /etc/shells

sudo sort -u /etc/shells -o /etc/shells

# Use zsh as default shell

sudo chsh -s $(command -v zsh) $USER

# Package zsh plugins

antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

