#!/usr/bin/env bash
set -euo pipefail

SANDY_HOME="$HOME/.sandy"
BIN_DIR="/usr/local/bin"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing sandy..."

mkdir -p "$SANDY_HOME"
cp "$SCRIPT_DIR/Dockerfile" "$SANDY_HOME/Dockerfile"

cp "$SCRIPT_DIR/sandy" "$BIN_DIR/sandy"
chmod +x "$BIN_DIR/sandy"

echo "Done. Run 'sandy init' in any project directory to get started."
