function gfgr -d "javascript package manager"
    git fetch origin (__parse_git_branch)
    git rebase -m origin/$(__parse_git_branch)
end
