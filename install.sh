#!/usr/bin/env bash

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/.shell
cp -R "$REPO_DIR/aliases" ~/.shell/

RC_FILE="$HOME/.zshrc"
[ -f "$HOME/.bashrc" ] && RC_FILE="$HOME/.bashrc"

SOURCE_CMD='for file in ~/.shell/aliases/*.sh; do [ -r "$file" ] && source "$file"; done'

grep -qxF "$SOURCE_CMD" "$RC_FILE" || echo "$SOURCE_CMD" >> "$RC_FILE"

echo "Installation completed."