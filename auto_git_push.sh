#!/bin/bash

# auto_git_push.sh
# Smart, clean Git auto-push script 🚀

# Exit immediately if a command exits with a non-zero status
set -e

# Get current branch name dynamically
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Ask for commit message
read -p "Enter commit message (leave blank for 'Auto update'): " commit_message

# Use 'Auto update' if no message provided
if [ -z "$commit_message" ]; then
    commit_message="Auto update"
fi

# Stage all changes
git add .

# Commit changes
git commit -m "$commit_message"

# Push to current branch
git push origin "$current_branch"

echo "✅ Successfully pushed changes to '$current_branch' branch!"
