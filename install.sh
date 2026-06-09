#!/bin/bash
mkdir -p ~/.claude
[ -f "$HOME/dotfiles/.claude/credentials.json" ] && cp "$HOME/dotfiles/.claude/credentials.json" ~/.claude/.credentials.json
