vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })

vim.keymap.set("n", "<leader>p", function()
    local path
    if vim.bo.filetype == "NvimTree" then
        local node = require("nvim-tree.api").tree.get_node_under_cursor()
        path = node and node.absolute_path
    else
        path = vim.api.nvim_buf_get_name(0)
    end

    if not path or not path:match("%.pdf$") then
        vim.notify("Not a PDF", vim.log.levels.WARN)
        return
    end

    vim.fn.jobstart({ "open", path }, { detach = true })
end, { desc = "Open PDF externally" })
