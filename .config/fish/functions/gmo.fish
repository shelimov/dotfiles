function gmo -d "Merge origin/branch_name to local branch_name"
    echo "git merge --ff "(__parse_git_branch)" origin/"(__parse_git_branch)
    git merge --ff (__parse_git_branch) origin/(__parse_git_branch)
end
