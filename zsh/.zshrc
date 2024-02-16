autoload -U colors && colors
PS1="%B%{$fg[green]%}%n%{$fg[red]%} at %{$fg[blue]%}%M%{$fg[yellow]%} in %{$fg[magenta]%}%~%{$reset_color%} $%b "

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

eval "$(zoxide init --cmd cd zsh)"
