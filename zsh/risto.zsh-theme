# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
# It might be bash like, but I can't have my co-workers knowing I use zsh
function prompt_char {
    echo "%{$fg_bold[green]%}> "
}
PROMPT='%{$fg[green]%}%n@%m:%{$fg_bold[blue]%}%4~ $(git_prompt_info)
$(prompt_char)%{$reset_color%}'
# RPROMPT='%{$fg[yellow]%}[%D{%m/%d} %D{%H:%M:%S}]%{$reset_color%}'
# PROMPT='$(prompt_char)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
