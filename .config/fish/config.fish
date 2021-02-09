if test $TERM_PROGRAM="Terminus-Sublime"
    set --universal pure_color_current_directory yellow
    set --universal pure_color_normal yellow
    set --universal pure_color_prompt_on_success green
    set --universal pure_color_prompt_on_error brred
    set --universal pure_color_git_dirty ff7400
else
    set --universal pure_color_prompt_on_success green
    set --universal pure_color_prompt_on_error brred
    set --universal pure_color_git_dirty ff7400
end

set --universal pure_symbol_prompt "~>"
set --universal pure_symbol_git_dirty "✸"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
abbr lsa "ls -a"
