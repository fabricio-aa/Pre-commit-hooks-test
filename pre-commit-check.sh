#!/bin/bash

echo "[HOOK] Checking for newline at end of file..."

FILES=$(git diff --cached --name-only --diff-filter=ACM)

status=0

for file in $FILES; do
  if [ -f "$file" ] && file "$file" | grep -q text; then
    if [ -s "$file" ] && [ "$(tail -c1 "$file")" != "" ]; then
      echo "[FIX] Appending missing newline to: $file"
      echo >> "$file"
      git add "$file"
    fi
  fi
done

exit $status
