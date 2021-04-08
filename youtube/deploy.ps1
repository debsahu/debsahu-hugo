param (
    [string]$msg = "rebuilding site $(date)",
    [bool]$build = $false
)
# PowerShell

switch ($build)
{
    # Build the project
    $true { hugo --gc --minify; break }
    default {echo "Skipping local build, using prebuilt files"; break }
}

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