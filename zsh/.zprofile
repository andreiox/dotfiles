# Profile file. Runs on login. Environmental variables are set here.

export PATH="$PATH:$HOME/.scripts:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin"
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export FS="dolphin"
export ZDOTDIR="$HOME/.config/zsh"
export XDG_CONFIG_HOME="$HOME/.config"

export XDG_MENU_PREFIX=arch- kbuildsycoca6

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
