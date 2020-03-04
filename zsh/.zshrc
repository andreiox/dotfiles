autoload -U colors && colors
PS1="%B%{$fg[green]%}%n%{$fg[red]%} at %{$fg[blue]%}%M%{$fg[yellow]%} in %{$fg[magenta]%}%~%{$reset_color%} $%b "

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
