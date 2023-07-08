#!/usr/bin/zsh

export EDITOR="vim"
export TERMINAL="foot"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"


# Other Programs
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export _JAVA_AWT_WM_NONREPARENTING=1
export NVM_DIR="$HOME/.local/share/nvm"
export PATH=$PATH:$HOME/.local/bin

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	hyprstart
fi

