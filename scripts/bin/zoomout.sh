#!/bin/bash
REGEXP='s/FontName.*/FontName=DejaVu Sans Mono 12/g'
sed -i "$REGEXP" ~/dotfiles/xfce4-terminal/.config/xfce4/terminal/terminalrc
