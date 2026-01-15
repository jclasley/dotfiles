#!/usr/bin/env fish

# Get current state from tmux env
set state (tmux show-environment -g RESIZE_MODE 2>/dev/null | string replace 'RESIZE_MODE=' '')

if test "$state" = "on"
    # Toggle OFF - remove hook and restore layout
    tmux set-hook -gu pane-focus-in
    set saved_layout (tmux show-environment -g RESIZE_SAVED_LAYOUT 2>/dev/null | string replace 'RESIZE_SAVED_LAYOUT=' '')
    if test -n "$saved_layout"
        tmux select-layout "$saved_layout"
    end
    tmux set-environment -gu RESIZE_SAVED_LAYOUT
    tmux set-environment -g RESIZE_MODE off
    tmux display-message "Resize mode: OFF"
else
    # Toggle ON - save layout, set hook, and resize current pane
    set current_layout (tmux list-windows -F '#{window_layout}' -f '#{==:#{window_active},1}')
    tmux set-environment -g RESIZE_SAVED_LAYOUT "$current_layout"
    tmux set-hook -g pane-focus-in 'resize-pane -x 80% -y 80%'
    tmux resize-pane -x 80% -y 80%
    tmux set-environment -g RESIZE_MODE on
    tmux display-message "Resize mode: ON"
end
