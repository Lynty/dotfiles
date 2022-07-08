#OLD_PROMPT='[%{$fg_bold[white]%}%n%{$reset_color%}@%{$fg_bold[red]%}%m%{$reset_color%} %{$fg[cyan]%}%c%{$reset_color%} %{$fg[white]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%} $(git_prompt_info)%{$reset_color%}]$ '

PROMPT='$fg_bold[red]%}%m %{$reset_color%}%{$fg_bold[cyan]%}%c%{$reset_color%}%{$reset_color%} $(git_prompt_info)%{$reset_color%} ➤ '
# to see user@hostname
#PROMPT='%{$fg_bold[red]%}lynnux%{$fg_bold[white]%}@%{$fg_bold[red]%}%m %{$reset_color%}%{$fg_bold[cyan]%}%c%{$reset_color%}%{$reset_color%} $(git_prompt_info)%{$reset_color%} ➤ '
# to see full path
#PROMPT='%{$fg_bold[red]%}lynnux %{$reset_color%}%{$fg_bold[cyan]%}%~%{$reset_color%}%{$reset_color%} $(git_prompt_info)%{$reset_color%} ➤ '

# inspiration from af-magic theme
RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1+=" ${FG[237]}kx:$ZSH_KUBECTL_PROMPT %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"
