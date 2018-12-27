function gpu -d "Setting current branch to upstream"
    echo "git push --set-upstream origin "(__parse_git_branch)
    git push --set-upstream origin (__parse_git_branch)
end
