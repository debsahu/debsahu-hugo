# Build the project
hugo

# Goto public folder
cd public

# Add git changes
git add .

# Commit changes
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push git
git push origin main