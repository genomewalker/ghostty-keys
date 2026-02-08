#!/bin/bash
# Install ghostty-keys to your PATH

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INSTALL_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"

# Create symlink
ln -sf "$SCRIPT_DIR/ghostty-keys" "$INSTALL_DIR/ghostty-keys"

echo "✅ Installed ghostty-keys to $INSTALL_DIR"
echo ""

# Check if in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "⚠️  Add this to your ~/.zshrc or ~/.bashrc:"
    echo ""
    echo "    export PATH=\"\$HOME/.local/bin:\$PATH\""
    echo ""
fi

# Try to install rich for beautiful output
echo "📦 Installing 'rich' for beautiful terminal output..."
if command -v uv &> /dev/null; then
    uv pip install --user rich 2>/dev/null && echo "✅ Installed rich with uv"
elif command -v pipx &> /dev/null; then
    pipx inject rich 2>/dev/null || echo "ℹ️  Could not install rich with pipx"
else
    pip3 install --user rich 2>/dev/null || echo "ℹ️  Optional: Install 'rich' for beautiful output"
fi

echo ""
echo "🎉 Done! Run 'ghostty-keys' to start"
echo ""
echo "Usage:"
echo "  ghostty-keys              # Interactive mode"
echo "  ghostty-keys split        # Quick search"
echo "  ghostty-keys --all        # Show all keybindings"
