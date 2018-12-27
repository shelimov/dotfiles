function gpd -d "Delete current branch in the origin"
    echo "git push --delete origin "(__parse_git_branch)
    git push --delete origin (__parse_git_branch)
end
