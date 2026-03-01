# Blog: Ricing Fastfetch for the Modern Desktop

## The Quest for the Perfect Terminal Fetch
Terminal "fetches" (like Neofetch or Fastfetch) are the fingerprint of a Linux user. But I wanted more than just a static logo—I wanted variety, modern format support, and a clean, boxed aesthetic.

### 1. The HEIF Challenge
The first hurdle was image formats. Modern phones save in `.heic` (HEIF). Most random-fetch scripts only look for `.png` or `.jpg`. I had to modify my `find` logic to include these high-efficiency formats:
```bash
IMG=$(find "$IMG_DIR" -type f \( -iname "*.png" -o -iname "*.heic" ... \) | shuf -n 1)
```

### 2. Organizing Chaos: The Boxed Layout
Standard fetches can look cluttered. By using custom modules and box-drawing characters (`┌`, `─`, `┤`, `└`), I categorized my info into **System**, **Hardware**, **Storage**, and **Session**. 

### 3. Maintaining Proportions
One tricky part of Fastfetch is the logo size. We experimented with different heights and widths, eventually settling on a height of **15** to keep the terminal from feeling cramped while still showing off the high-res images.

### 4. Git and Dotfiles
Finally, I moved everything into a `~/dotfiles` repository. This is the gold standard for Linux users: it keeps your hard work safe and allows you to share your "rice" with the world on GitHub.

*Stay tuned for more ricing adventures!*
