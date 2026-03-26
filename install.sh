#!/usr/bin/env bash
set -euo pipefail

REPO="pinegoose/sandy"
BRANCH="master"
BASE_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}"
SANDY_HOME="${SANDY_HOME:-$HOME/.sandy}"
BIN_DIR="/usr/local/bin"

echo "Installing sandy..."

mkdir -p "$SANDY_HOME"

curl -fsSL "${BASE_URL}/Dockerfile" -o "$SANDY_HOME/Dockerfile"
curl -fsSL "${BASE_URL}/sandy" -o "${BIN_DIR}/sandy"
chmod +x "${BIN_DIR}/sandy"

echo "Done. Run 'sandy init' in any project directory to get started."
