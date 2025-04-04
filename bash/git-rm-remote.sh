#!/bin/bash

if git rev-parse --git-dir >/dev/null 2>&1; then
  # we are in a git repository
  echo "In git repo"
else
  echo "Not in git repo"
  exit 0
fi

CURRENT_BRANCH=$(git branch --show-current)

echo "Current branch is $CURRENT_BRANCH"

# display yes/no
read -p "Are you sure you want to delete the remote of current branch 'origin/$CURRENT_BRANCH'? y/n (yes/no) $(echo $'\n> ')" -n 1 -r
echo # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Deleting remote of 'origin/$CURRENT_BRANCH'"
  git push --no-verify origin -d "$CURRENT_BRANCH"
else
  echo "Selected no"
fi
