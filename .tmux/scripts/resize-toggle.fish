#!/usr/bin/env fish

# Get current state from tmux env
set state (tmux show-environment -g RESIZE_MODE 2>/dev/null | string replace 'RESIZE_MODE=' '')

if test "$state" = "on"
    # Toggle OFF - remove hook
    tmux set-hook -gu pane-focus-in
    tmux set-environment -g RESIZE_MODE off
    tmux display-message "Resize mode: OFF"
else
    # Toggle ON - set hook and resize current pane
    tmux set-hook -g pane-focus-in 'resize-pane -x 80% -y 80%'
    tmux resize-pane -x 80% -y 80%
    tmux set-environment -g RESIZE_MODE on
    tmux display-message "Resize mode: ON"
end
