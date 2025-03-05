#!/bin/bash

# Ensure version is provided as argument
if [ -z "$1" ]; then
    echo "Please provide a version number (e.g., 2.1.3)"
    exit 1
fi

version=$1
date_str=$(date "+%Y%m%d")
backup_dir="MinecraftBedrockServerBackup"
zip_file="MinecraftBedrockServerBackup_$version_$date_str.zip"

# Directory where the server data is stored
server_dir="data"

# Ensure the server directory exists
if [ ! -d "$server_dir" ]; then
    echo "Server directory ($server_dir) not found!"
    exit 1
fi

# Create a temporary backup folder
mkdir -p "$backup_dir"

# Define the essential directories and files to back up
essential_files=(
    "worlds"
    # "server.properties"
    # "permissions.json"
    # "allowlist.json"
    # "behavior_packs"
    # "resource_packs"
    # "packet-statistics.txt"
    # "premium_cache"
    # "profanity_filter.wlist"
    # "release-notes.txt"
    # "treatments"
)

# Copy the essential files and directories into the backup folder
for file in "${essential_files[@]}"; do
    if [ -e "$server_dir/$file" ]; then
        cp -r "$server_dir/$file" "$backup_dir/"
    else
        echo "Warning: $file not found in the server directory!"
    fi
done

# Create the zip file with version and date
echo "Creating backup zip file: $zip_file"
zip -9 -r "$zip_file" "$backup_dir"

# Clean up the temporary backup folder
rm -rf "$backup_dir"

# Optionally, split the zip file if it exceeds a certain size
split_size=1800  # Split the zip if it exceeds 1800MB
file_size=$(du -m "$zip_file" | cut -f1)
if [ $file_size -gt $split_size ]; then
    echo "The backup file is too large, splitting into chunks..."
    zip -s 1800m -sv -r "$zip_file" "$backup_dir"
fi

# Clean up the un-split zip file if the split was performed
# if [ -f "$zip_file" ]; then
#     rm "$zip_file"
# fi

# Create a GitHub release (optional)
# gh release create v$version "$zip_file"  # Uncomment to use GitHub CLI for release creation

echo "Backup completed: $zip_file"