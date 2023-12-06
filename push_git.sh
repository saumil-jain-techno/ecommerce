#!/bin/bash

# Function to list Git branches
list_git_branches() {
    git branch -a
}

# Function to validate if a branch exists
validate_branch_exists() {
    local branch_name="$1"

    if git rev-parse --verify "$branch_name" >/dev/null 2>&1; then
        echo "Branch '$branch_name' exists."

        echo "Adding files......."
        echo -e "\n"

        eval "git checkout $branch_name && git add . && git commit -m $commit_message && git push origin $branch_name"

        echo "$(figlet ":::::: DONE ::::::")"
        echo -e "\n"
        echo "🎆 🎉"
    else
        echo "Branch '$branch_name' does not exist."
    fi
}

echo "List Git branches"
list_git_branches

read -p "Enter branch name to pull: " branch_name
read -p "Enter commit message: " commit_message

validate_branch_exists "$branch_name"
