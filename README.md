# 🎨 Fastfetch Ricing & HEIF Support Fix

This repository contains my personal `fastfetch` configuration, including a custom random image script and a polished "boxed" info layout.

## ✨ Features
- **Dynamic Image Selection:** A bash script that picks a random image from a folder every time the terminal opens.
- **HEIF/HEIC Support:** Fixed the common issue where modern high-efficiency image formats weren't being detected or rendered.
- **Boxed Info Layout:** A clean, categorized, and bordered display for system information.
- **Automated Startup:** Integrated directly into `.zshrc`.

## 📂 Structure
- `fastfetch/config.jsonc`: The main configuration for the boxed layout.
- `fastfetch/random-fetch.sh`: The logic for picking images (now supports PNG, JPG, HEIC, WebP, AVIF, SVG).
- `zshrc`: Example of how to trigger the fetch on startup.

## 🚀 How to use
1. Clone this repo.
2. Copy the `fastfetch` folder to `~/.config/`.
3. Put your images in `~/Pictures/fastfetch_images/`.
4. Add `~/.config/fastfetch/random-fetch.sh` to your `.zshrc`.

---
*Generated with the help of Gemini CLI.*
