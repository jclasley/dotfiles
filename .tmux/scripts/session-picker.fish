#!/usr/bin/env fish
set FZF_DEFAULT_OPTS ''
set session (tmux list-sessions -F '#S' | fzf --tmux) || exit 0
tmux switch-client -t $session
