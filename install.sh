#!/bin/bash
mkdir -p ~/.claude
if [ -n "$CLAUDE_CREDENTIALS" ]; then
  printf '%s\n' "$CLAUDE_CREDENTIALS" > ~/.claude/.credentials.json
  chmod 600 ~/.claude/.credentials.json
fi
cat > ~/.claude/settings.json <<'EOF'
{
  "theme": "dark",
  "skipDangerousModePermissionPrompt": true,
  "model": "claude-sonnet-4-6"
}
EOF
