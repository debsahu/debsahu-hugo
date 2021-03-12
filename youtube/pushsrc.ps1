param (
    [string]$msg = $(date)
)
# PowerShell

# Add git changes
git add .

# Commit changes

# # Bash
# msg="HUGO Source as of $(date)"
# if [ -n "$*" ]; then
#     msg="$*"
# fi

git commit -m "$msg"

# Push git
git push origin main