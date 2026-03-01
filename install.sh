#!/bin/bash

# Define variables
DOTFILES_DIR=$(pwd)
CONFIG_DIR="$HOME/.config"

# Create .config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# List of terminal/app configurations to symlink
# These are directories in ~/dotfiles/.config/
TERMINAL_CONFIGS=("alacritty" "ghostty" "fastfetch" "fish" "btop" "kitty" "micro" "Kvantum" "panel-colorizer")

echo "--- Symlinking App Configurations ---"
for config in "${TERMINAL_CONFIGS[@]}"; do
    if [ -d "$DOTFILES_DIR/.config/$config" ]; then
        echo "Symlinking $config directory..."
        # If it's a symlink, remove it. If it's a directory, back it up if needed.
        # For simplicity, we remove existing to replace with our symlink.
        rm -rf "$CONFIG_DIR/$config"
        ln -s "$DOTFILES_DIR/.config/$config" "$CONFIG_DIR/$config"
    fi
done

echo ""
echo "--- Symlinking Shell Configs ---"
# Symlink ZSH configurations
if [ -d "$DOTFILES_DIR/zsh" ]; then
    echo "Symlinking ZSH (zshrc, p10k.zsh)..."
    ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
    ln -sf "$DOTFILES_DIR/zsh/p10k.zsh" "$HOME/.p10k.zsh"
fi

# Symlink Bash configurations
if [ -d "$DOTFILES_DIR/bash" ]; then
    echo "Symlinking Bash (bashrc)..."
    ln -sf "$DOTFILES_DIR/bash/bashrc" "$HOME/.bashrc"
fi

echo ""
echo "--- Symlinking KDE Plasma Configs ---"
# Symlink KDE configurations (individual files in ~/dotfiles/kde/)
if [ -d "$DOTFILES_DIR/kde" ]; then
    for config_file in "$DOTFILES_DIR/kde/"*; do
        filename=$(basename "$config_file")
        echo "Symlinking $filename..."
        ln -sf "$config_file" "$CONFIG_DIR/$filename"
    done
fi

echo ""
echo "Done! Your rice is now ready to use."
echo "Note: You may need to logout/login or restart Plasma for some changes to take effect."
