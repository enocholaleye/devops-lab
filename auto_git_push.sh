#!/bin/bash

# Repo path
REPO_DIR="/home/enoch/devops-labs"

# Navigate to repo
cd "$REPO_DIR" || { echo "❌ Repository directory not found!"; exit 1; }

# Stage changes
git add .

# Ask for commit message
read -p "Enter commit message (leave blank for 'Auto update'): " COMMIT_MSG
COMMIT_MSG=${COMMIT_MSG:-"Auto update"}

# Commit
git commit -m "$COMMIT_MSG"

# Push
git push origin main

echo "✅ Successfully pushed changes to devops-labs repository!"
