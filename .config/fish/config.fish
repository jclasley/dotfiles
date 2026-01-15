fish_config theme choose "Dracula Official"

function update-config
    source $HOME/.config/fish/config.fish
end

# miscellaneous scripts
if test -f $HOME/.fish/scripts/misc.fish
    source $HOME/.fish/scripts/misc.fish
end

# abbreviations
if test -f $HOME/.fish/abbrs.fish
    source $HOME/.fish/abbrs.fish
end

# rust
if test -f "$HOME/.cargo/env.fish" # For fish
    source "$HOME/.cargo/env.fish" # For fish
end

function idea
    open -na "/Applications/GoLand.app" --args $argv
end

if status is-interactive
    nvm use latest
end

starship init fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /Users/jonlasley/.ghcup/bin # ghcup-env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jonlasley/google-cloud-sdk/path.fish.inc' ]
    . '/Users/jonlasley/google-cloud-sdk/path.fish.inc'
end

# opam configuration
source /Users/jonlasley/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

function gifit
    set input $args[1]
    set output $args[2]
    ffmpeg -ss 30 -t 3 -i $input \
        -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
        -loop 0 $output
end

for f in ~/.fish/scripts/*.fish
    source $f
end

alias claude="/Users/jonlasley/.claude/local/claude"

abbr -a dc 'docker compose'

# GOPRIVATE for private go repos
export GOPRIVATE='github.com/alongsideai/*'

# tmux abbrevs
abbr tm 'tmux a'
source ~/.config/fish/tmux.fish

# alias the .cfg git for easy additions/management
# reference here: https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
