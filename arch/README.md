# Arch Linux / Hyprland Configuration

This directory contains the necessary configurations to set up a Hyprland environment on Arch Linux that matches the Rose Pine theme of the rest of this repository.

## Components
- **Hyprland**: Tiling window manager (replaces AeroSpace).
- **Waybar**: Status bar (replaces the macOS menu bar).
- **Wofi**: Application launcher (replaces Raycast/Spotlight).
- **Hyprpaper**: Wallpaper utility.

## Keybindings (SUPER = Command/Win key)
- `SUPER + RETURN`: Open Terminal (Ghostty/Kitty/Alacritty)
- `SUPER + SPACE`: Open Launcher (Wofi)
- `SUPER + h/j/k/l`: Vim-style focus movement (Matches your AeroSpace config)
- `SUPER + SHIFT + h/j/k/l`: Move windows
- `SUPER + 1-6`: Switch workspaces
- `SUPER + TAB`: Previous workspace
- `SUPER + W`: Close window
- `SUPER + F`: Fullscreen

## Installation
1. Install the required packages on Arch (including Homebrew dependencies):
   ```bash
   sudo pacman -S --needed base-devel curl git procps-ng file hyprland hyprpaper waybar wofi dunst ttf-jetbrains-mono-nerd
   ```

2. Install Homebrew for Linux:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. Move these folders out of `arch/` and into the root of your dotfiles:
   ```bash
   mv arch/hypr arch/waybar arch/wofi .
   ```

4. Run your setup script with the `--brew` flag to install your tools:
   ```bash
   ./scripts/setup_symlinks.sh --brew
   ```

## Note on Wallpapers
The `hyprpaper.conf` points to `~/.dotfiles/assets/cyber_girl.jpg`. Ensure your dotfiles are cloned to `~/.dotfiles` or update the path in that file.
