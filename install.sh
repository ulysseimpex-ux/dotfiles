#!/bin/bash
mkdir -p ~/.claude
if [ -n "$CLAUDE_CREDENTIALS" ]; then
  EXPIRES=$(echo "$CLAUDE_CREDENTIALS" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('claudeAiOauth',{}).get('expiresAt',0))" 2>/dev/null)
  NOW_MS=$(node -e "console.log(Date.now())" 2>/dev/null)
  if [ -n "$EXPIRES" ] && [ -n "$NOW_MS" ] && [ "$EXPIRES" -gt "$NOW_MS" ] 2>/dev/null; then
    echo "$CLAUDE_CREDENTIALS" > ~/.claude/.credentials.json
  fi
fi
