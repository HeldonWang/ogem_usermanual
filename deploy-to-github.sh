#!/bin/bash

echo "Deploying HonKit documentation to GitHub Pages..."

# Build the book
echo "Building the book..."
npx honkit build

# Check if build was successful
if [ $? -ne 0 ]; then
    echo "Error building the book!"
    exit 1
fi

# Create or update the gh-pages branch
echo "Preparing for GitHub Pages deployment..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git and try again."
    exit 1
fi

# Save current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Check if there are uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "There are uncommitted changes in your working directory."
    read -p "Do you want to continue anyway? (y/n): " CONTINUE
    if [ "${CONTINUE,,}" != "y" ]; then
        echo "Deployment aborted."
        exit 1
    fi
fi

# Create a temporary directory for the gh-pages branch
rm -rf .gh-pages-tmp
mkdir .gh-pages-tmp

# Copy the built book to the temporary directory
cp -r _book/* .gh-pages-tmp/

# Create a .nojekyll file to prevent GitHub from processing the site with Jekyll
touch .gh-pages-tmp/.nojekyll

# Switch to gh-pages branch or create it if it doesn't exist
git branch -f gh-pages
git checkout gh-pages

# Remove all files from the gh-pages branch
find . -maxdepth 1 ! -name '.git' ! -name '.gh-pages-tmp' -exec rm -rf {} \;

# Copy the contents from the temporary directory
cp -r .gh-pages-tmp/* .

# Remove the temporary directory
rm -rf .gh-pages-tmp

# Add all files, commit, and push
git add -A
git commit -m "Update documentation"
git push -f origin gh-pages

# Switch back to the original branch
git checkout "$CURRENT_BRANCH"

echo "Deployment completed successfully!"
echo "Your documentation should be available at: https://[username].github.io/[repository-name]/"
echo "(Replace [username] and [repository-name] with your GitHub username and repository name)"

exit 0 