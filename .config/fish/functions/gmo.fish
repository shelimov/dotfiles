function gpu -d "Merge origin/branch_name to local branch_name"
    echo "git merge --ff origin/"(__parse_git_branch)
    git merge --ff origin/(__parse_git_branch)
end
