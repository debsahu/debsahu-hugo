#!/usr/bin/bash

build=false;
while getopts 'b' flag; do
    case "$flag" in
        b) build=true;;
    esac
done
shift "$(( OPTIND - 1 ))"

if "$build"; then
    # Build the project
    hugo --gc --minify
else
    echo "Skipping local build, using prebuilt files"
fi

# Goto public folder
cd public

# Add git changes
git add .

# Commit changes

# # Bash
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push git
git push origin main

# get out of public dir
cd ..

# Push src to GitHub
./pushsrc.sh