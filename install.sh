#!/bin/bash
mkdir -p ~/.claude
if [ -n "$CLAUDE_CREDENTIALS" ]; then
  echo "$CLAUDE_CREDENTIALS" > ~/.claude/.credentials.json
fi
