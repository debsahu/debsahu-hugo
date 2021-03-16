param (
    [string]$msg = "rebuilding site $(date)"
)
# PowerShell

# Build the project
hugo --gc --minify

# Goto public folder
cd public

# Add git changes
git add .

# Commit changes

# # Bash
# msg="rebuilding site $(date)"
# if [ -n "$*" ]; then
#     msg="$*"
# fi
git commit -m "$msg"

# Push git
git push origin main

# get out of public dir
cd ..

# Push src to GitHub
& "$PSScriptRoot\pushsrc.ps1"