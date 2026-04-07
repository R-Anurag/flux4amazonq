#!/bin/bash

echo "Installing Flux for Amazon Q..."
echo

SOURCE="$(cd "$(dirname "$0")/prompts" && pwd)"
TARGET="$HOME/.aws/amazonq/prompts"

if [ ! -d "$HOME/.aws/amazonq" ]; then
    echo "Error: Amazon Q directory not found at $HOME/.aws/amazonq"
    echo "Please ensure Amazon Q is installed."
    exit 1
fi

if [ ! -d "$TARGET" ]; then
    echo "Creating prompts directory..."
    mkdir -p "$TARGET"
fi

echo "Copying prompts to $TARGET..."
cp -R "$SOURCE"/* "$TARGET/"

echo
echo "Installation complete!"
echo
echo "Available prompts:"
echo "  @repo-init"
echo "  @session-start"
echo "  @session-update"
echo "  @session-end"
echo "  @session-current"
echo "  @session-list"
echo "  @session-help"
echo "  @git-commit"
echo "  @git-merge-cleanup"
echo "  @git-merge-retain"
echo
