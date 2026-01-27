function rgf
    rg --color=always --line-number '' |
        fzf --ansi --delimiter ':' \
            --bind 'change:reload:rg --color=always --line-number {q} || true' \
            --preview 'bat --color=always --highlight-line {2} {1}' \
            --bind 'enter:become(nvim {1} +{2})'
end
