# Ghostty Keys Reference

A beautiful, searchable reference for your Ghostty keybindings.

## Features

- **Reads YOUR keybindings** - Uses `ghostty +list-keybinds` to get your actual config
- **Semantic search** - Search by concept ("zoom", "navigate"), action ("new_split"), or key ("alt+h")
- **Organized by category** - Window, Tabs, Splits, Clipboard, Font, etc.
- **Beautiful output** - Rich terminal formatting (optional)

## Install

```bash
./install.sh
```

Or manually:
```bash
ln -s $(pwd)/ghostty-keys ~/.local/bin/ghostty-keys
```

## Usage

### Interactive Mode
```bash
ghostty-keys
```

Then type:
- Search terms like `split`, `copy`, `zoom`, `font`
- Key combos like `alt+h` or `super+d`
- Commands: `:all`, `:list`, `:cat splits`, `:help`, `:q`

### Quick Search
```bash
ghostty-keys split       # Find split-related bindings
ghostty-keys "alt+h"     # Find what Alt+H does
ghostty-keys zoom        # Find zoom/font bindings
ghostty-keys navigate    # Find navigation bindings
```

### Show All
```bash
ghostty-keys --all       # All keybindings by category
ghostty-keys --list      # List categories
```

## Your Vim-Style Bindings

From your config:

| Key | Action |
|-----|--------|
| `⌥ H/J/K/L` | Navigate splits (left/down/up/right) |
| `⌥ ⇧ H/J/K/L` | Resize splits |
| `⌥ S → V` | Split right (chord) |
| `⌥ S → H` | Split down (chord) |
| `⌥ S → Z` | Zoom split |
| `⌥ S → X` | Close split |
| `⌥ S → R` | Equalize splits |

## Optional: Beautiful Output

Install `rich` for colored tables:
```bash
pip install rich
# or
brew install python-rich
```
