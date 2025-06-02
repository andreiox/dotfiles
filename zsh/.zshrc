autoload -U colors && colors
PS1="%B%{$fg[green]%}%n%{$fg[red]%} at %{$fg[blue]%}%M%{$fg[yellow]%} in %{$fg[magenta]%}%~%{$reset_color%} $%b "

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

export HISTSIZE=10000000
export SAVEHIST=10000000
export HISTFILE=~/.zhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

eval "$(zoxide init --cmd cd zsh)"
