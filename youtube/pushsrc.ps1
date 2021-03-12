# Add git changes
git add .

# Commit changes

# # Bash
# msg="HUGO Source as of $(date)"
# if [ -n "$*" ]; then
#     msg="$*"
# fi

# PowerShell
param (
    [string]$msg = "$(date)"
)

git commit -m "$msg"

# Push git
git push origin main