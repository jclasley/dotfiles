# fzf options
eval "$(fzf --fish)"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --inline-info --preview "bat --color=always {}"'

function vf
    nvim $(fzf)
end

function cf
    cd $(dirname $(fzf))
end

function rgf
    rg --color=always --line-number '' |
        fzf --ansi --delimiter ':' \
            --bind 'change:reload:rg --color=always --line-number {q} || true' \
            --preview 'bat --color=always --highlight-line {2} {1}' \
            --bind 'enter:become(nvim {1} +{2})'
end
