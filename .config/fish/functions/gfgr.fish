function gfgr -d "rebase current branch commits on top of remote branch"
    git fetch origin (__parse_git_branch)
    git rebase -m origin/(__parse_git_branch)
end
