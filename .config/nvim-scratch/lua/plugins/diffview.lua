local function diffview_open_rev()
    local refs = vim.fn.systemlist("git rev-parse --is-inside-work-tree 2>/dev/null 1>/dev/null && git log --all --oneline --decorate -100")
    if vim.v.shell_error ~= 0 or #refs == 0 then
        vim.notify("Not in a git repo or no commits found", vim.log.levels.WARN)
        return
    end

    require("mini.pick").start({
        source = {
            name = "Git Revisions",
            items = refs,
            choose = function(item)
                if item then
                    local rev = vim.split(item, " ")[1]
                    vim.cmd("DiffviewOpen " .. rev)
                end
            end,
        },
    })
end

return {
    "sindrets/diffview.nvim",
    keys = {
        { "<leader>gd", diffview_open_rev, desc = "Diffview open revision" },
    },
}
