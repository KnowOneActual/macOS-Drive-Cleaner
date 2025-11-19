#!/bin/zsh

echo "macOS File Cleaner"
echo "------------------"
echo "Please drag and drop the flash drive or folder you want to clean"
read -p "into this window and press Enter: " target_path

# Clean up the path from drag-and-drop
target_path=$(echo "$target_path" | sed 's/\\//g' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

# --- SAFETY CHECKS ---
if [ ! -d "$target_path" ]; then
  echo "\nERROR: The path you entered does not exist or is not a directory."
  exit 1
fi

if [ "$target_path" = "/" ] || [[ "$target_path" == "/System"* ]]; then
  echo "\nSAFETY-STOP: You cannot clean a main system drive. Operation cancelled."
  exit 1
fi

echo "\nWARNING: This will permanently delete hidden macOS files from:"
echo "$target_path"
read -p "Are you sure you want to continue? (y/n): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Operation cancelled."
  exit 0
fi

echo "\nCleaning..."

# Use dot_clean to merge resource forks, then delete leftovers
# This is often more effective than just deleting ._* files
echo "Merging resource forks with dot_clean..."
dot_clean -m "$target_path"

# Find and delete .DS_Store and leftover ._* files
echo "Deleting .DS_Store and ._* files..."
find "$target_path" -name ".DS_Store" -type f -delete
find "$target_path" -name "._*" -type f -delete

# Find and delete specific hidden directories
echo "Deleting hidden system directories..."
find "$target_path" -name ".Trashes" -type d -exec rm -rf {} +
find "$target_path" -name ".Spotlight-V100" -type d -exec rm -rf {} +
find "$target_path" -name ".fseventsd" -type d -exec rm -rf {} +

echo "\n---"
echo "Cleaning complete!"