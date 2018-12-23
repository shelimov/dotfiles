function gpu -d "Setting current branch to upstream"
    echo 'Setting current branch as upgrade and push..'
    git push --set-upstream origin (__parse_git_branch)
end
