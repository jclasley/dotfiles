#!/usr/bin/env fish
set FZF_DEFAULT_OPTS ''
set window (tmux list-windows -F '#W' | fzf --tmux) || exit 0
tmux select-window -t $window
