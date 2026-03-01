#!/bin/bash

# Path to your images
IMG_DIR="$HOME/Pictures/fastfetch_images"

# Pick a random image
IMG=$(find "$IMG_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.heic" -o -iname "*.heif" -o -iname "*.webp" -o -iname "*.avif" -o -iname "*.svg" -o -iname "*.bmp" \) | shuf -n 1)

# Run fastfetch with that image
if [ -n "$IMG" ]; then
    fastfetch --logo "$IMG"
else
    # Fallback to normal if no images found
    fastfetch
fi
