#!/usr/bin/env bash

# History in cache directory
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.cache/zsh_history

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

autoload -Uz colors && colors
autoload -U promptinit; promptinit

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

bindkey -e

[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"
[ -f "$HOME/.config/shell/exports" ] && source "$HOME/.config/shell/exports"

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

#Load zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/starship.toml
eval "$(starship init zsh)"
