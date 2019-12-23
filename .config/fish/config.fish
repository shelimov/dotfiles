if test $TERM_PROGRAM = "Terminus-Sublime"
    # set pure_color_current_directory (set_color yellow)
    set pure_color_prompt_on_success (set_color --bold green)
    set pure_color_prompt_on_error (set_color --bold brred)
    set pure_color_git_dirty (set_color ff7400)
else
    set pure_color_prompt_on_success (set_color --bold green)
    set pure_color_prompt_on_error (set_color --bold brred)
    set pure_color_git_dirty (set_color ff7400)
end

set pure_symbol_prompt "~>"
set pure_symbol_git_dirty "✸"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
abbr lsa "ls -a"
