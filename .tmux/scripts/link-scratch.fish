#!/usr/bin/env fish
set windows (tmux list-windows -a)
set found 0
for w in $windows
    if string match -q -r '.*scratch.*' $w
        set found 1
        set window (echo $w | cut -d' ' -f 1)
    end
end

# if window is not found, create it
if test $found -eq 0
    tmux new-window -c ~/j1 -n scratch -t 0 -b 'nvim ~/j1'
    return 0
end

set sessions (tmux list-sessions)
for s in $sessions
    if string match -q -r '\(attached\)$' $s
        set session (echo $s | cut -d: -f 1)
    end
end

set window (string replace -r ':$' '' $window)
set target_session (echo $window | cut -d':' -f 1)

if test $target_session = $session
    tmux display-message "Scratch already exists"
    return 0
end

tmux link-window -b -s $window -t $session:0
