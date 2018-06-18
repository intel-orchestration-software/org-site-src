#!/bin/bash

REPO_ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
${REPO_ROOT_DIR}/tools/hugo --config ${REPO_ROOT_DIR}/src/config.yaml -s ${REPO_ROOT_DIR}/src -d ${REPO_ROOT_DIR}/output

# Go To Public folder
cd output
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
