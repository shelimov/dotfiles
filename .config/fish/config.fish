if test $TERM_PROGRAM="Terminus-Sublime"
    # set pure_color_current_directory yellow
    set pure_color_prompt_on_success green --bold
    set pure_color_prompt_on_error brred --bold
    set pure_color_git_dirty ff7400
else
    set pure_color_prompt_on_success green --bold
    set pure_color_prompt_on_error brred --bold
    set pure_color_git_dirty ff7400
end

set pure_symbol_prompt "~>"
set pure_symbol_git_dirty "✸"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
abbr lsa "ls -a"
