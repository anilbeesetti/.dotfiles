#!/bin/bash

gnome_schema="org.gnome.desktop.interface"
gtk_theme="vimix-compact-beryl"
icon_theme="Tela-circle-manjaro-dark"
cursor_theme="Bibata-Modern-Ice"
cursor_size="24"
font_name="Noto Sans,  10"

echo $gtk_theme
echo $icon_theme
echo $cursor_theme
echo $cursor_size
echo $font_name

gsettings set "$gnome_schema" gtk-theme "$gtk_theme"
gsettings set "$gnome_schema" icon-theme "$icon_theme"
gsettings set "$gnome_schema" cursor-theme "$cursor_theme"
gsettings set "$gnome_schema" cursor-size "$cursor_size"
gsettings set "$gnome_schema" font-name "$font_name"
gsettings set "$gnome_schema" color-scheme "prefer-dark"

hyprctl setcursor $cursor_theme $cursor_size
export GTK_THEME=$gtk_theme
