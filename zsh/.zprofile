# Profile file. Runs on login. Environmental variables are set here.

export PATH="$PATH:$HOME/.scripts:$HOME/.local/bin:$HOME/go/bin"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export FS="thunar"
export ZDOTDIR="$HOME/.config/zsh"
export XDG_CONFIG_HOME="$HOME/.config"

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
